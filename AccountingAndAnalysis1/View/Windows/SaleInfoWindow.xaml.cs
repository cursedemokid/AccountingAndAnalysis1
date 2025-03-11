using AccountingAndAnalysis1.Models;

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
using System.Windows.Shapes;

namespace AccountingAndAnalysis1.View.Windows
{
    /// <summary>
    /// Логика взаимодействия для SaleInfoWindow.xaml
    /// </summary>
    public partial class SaleInfoWindow : Window
    {
        List<Sale> _sales = App.context.Sale.ToList();
        List<SaleProduct> _saleProducts = App.context.SaleProduct.ToList();
        public SaleInfoWindow(Sale sale)
        {
            InitializeComponent();

            SaleInfoGrid.DataContext = _sales.FirstOrDefault(s => s.Id == sale.Id);

            BasketLb.ItemsSource = _saleProducts.Where(s => s.SaleId == sale.Id).ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
