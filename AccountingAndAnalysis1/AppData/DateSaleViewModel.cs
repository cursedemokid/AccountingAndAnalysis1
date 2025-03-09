using LiveCharts.Wpf;
using LiveCharts;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccountingAndAnalysis1.AppData
{
    internal class DateSaleViewModel
    {
        public SeriesCollection SeriesCollection { get; set; } // Коллекция данных для графика
        public string[] Labels { get; set; } // Подписи для оси X (даты)
        public Func<double, string> YFormatter { get; set; } // Форматирование оси Y

        public DateSaleViewModel()
        {
            // Получаем данные из базы данных
            var salesData = App.context.Sale
                .GroupBy(s => s.Date) // Группируем по дате
                .Select(g => new
                {
                    Date = g.Key, // Дата
                    Quantity = g.Count() // Количество продаж за эту дату
                })
                .OrderBy(s => s.Date) // Сортируем по дате
                .ToList();

            // Создаем SeriesCollection для графика
            SeriesCollection = new SeriesCollection
        {
            new LineSeries
            {
                Title = "Количество продаж",
                Values = new ChartValues<int>(salesData.Select(s => s.Quantity)), // Данные для оси Y
                PointGeometry = DefaultGeometries.Circle, // Геометрия точек
                PointGeometrySize = 10 // Размер точек
            }
        };

            // Подписи для оси X (даты)
            Labels = salesData.Select(s => s.Date.ToShortDateString()).ToArray();

            // Форматирование оси Y (количество продаж)
            YFormatter = value => value.ToString("N0"); // Числовой формат без дробной части
        }
    }
}
