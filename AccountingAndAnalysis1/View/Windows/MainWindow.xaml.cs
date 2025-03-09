using AccountingAndAnalysis1.View.Pages;
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

namespace AccountingAndAnalysis1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            MainFrame.Navigate(new SalesPage());
        }

        private void PaymentTypeBtn_Click(object sender, RoutedEventArgs e)
        {
            SalesEllipseDiagram salesEllipseDiagram = new SalesEllipseDiagram();
            salesEllipseDiagram.ShowDialog();
        }

        private void DateBtn_Click(object sender, RoutedEventArgs e)
        {
            DateSaleDiagramWindow dateSaleDiagramWindow = new DateSaleDiagramWindow();
            dateSaleDiagramWindow.ShowDialog();
        }
    }
}
