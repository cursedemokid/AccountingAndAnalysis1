using LiveCharts;
using LiveCharts.Wpf;

using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountingAndAnalysis1.AppData
{

    internal class SaleViewModel
    {
        public SeriesCollection SeriesCollection { get; set; } // Коллекция данных для диаграммы
        public Func<ChartPoint, string> PointLabel { get; set; }

        public SaleViewModel()
        {
            // Получаем данные из ваших списков
            // Форматирование подписей
            List<Sale> cashSale = App.context.Sale.Where(s => s.SaleType.Id == 1).ToList();
            List<Sale> cardSale = App.context.Sale.Where(s => s.SaleType.Id == 2).ToList();

            // Сic SalesViewModel()
            {


                // Считаем общую сумму для наличных и безнала
                decimal totalCash = cashSale.Sum(s => s.TotalCost); // Используем TotalCost вместо Amount
                decimal totalCard = cardSale.Sum(s => s.TotalCost); // Используем TotalCost вместо Amount

                // Создаем SeriesCollection для диаграммы
                SeriesCollection = new SeriesCollection
        {
            new PieSeries
            {
                Title = "Наличные",
                Values = new ChartValues<decimal> { totalCash },
                DataLabels = true,
                LabelPoint = point => $"{point.Y:F2} руб."
            },
            new PieSeries
            {
                Title = "Безналичные",
                Values = new ChartValues<decimal> { totalCard },
                DataLabels = true,
                 LabelPoint = point => $"{point.Y:F2} руб."
            }
        };

                // Форматирование подписей (отображение процентов)
                PointLabel = chartPoint =>
                    $"{chartPoint.Y} ({chartPoint.Participation:P})";
            }
        }
    }
}
