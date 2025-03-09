using AccountingAndAnalysis1.AppData;
using AccountingAndAnalysis1.View.Windows;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AccountingAndAnalysis1.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для SalesPage.xaml
    /// </summary>
    public partial class SalesPage : Page
    {
        List<Sale> _sales = App.context.Sale.ToList();
        List<Store> _stores = App.context.Store.ToList();
        public SalesPage()
        {
            InitializeComponent();

            _stores.Insert(0, new Store { Name = "Все магазины" });
            FilterByStoreCmb.ItemsSource = _stores;
            

            SaleLv.ItemsSource = _sales;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Sale sale = SaleLv.SelectedItem as Sale;
            if (sale != null)
            {
                SaleInfoWindow saleInfoWindow = new SaleInfoWindow(sale);
                saleInfoWindow.ShowDialog();
            }
            else
            {
                FeedbackService.Warning("Вы не выбрали продажу из списка! Выберите продажу и повторите попытку");
            }
        }

        private void DiagramShow_Click(object sender, RoutedEventArgs e)
        {
            SalesEllipseDiagram salesEllipseDiagram = new SalesEllipseDiagram();
            salesEllipseDiagram.ShowDialog();
        }

        private void FilterByStoreCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Store store = FilterByStoreCmb.SelectedItem as Store;
            SaleLv.ItemsSource = _sales.Where(s => (s.CashRegister.Store.Name == FilterByStoreCmb.SelectedValue || store.Name == "Все магазины") && (s.Date == FilterByDateDp.SelectedDate || FilterByDateDp.SelectedDate == null));
        }

    }
}
