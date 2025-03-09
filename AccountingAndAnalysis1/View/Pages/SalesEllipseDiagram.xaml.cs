using AccountingAndAnalysis1.AppData;

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

namespace AccountingAndAnalysis1.View.Pages
{
    /// <summary>
    /// Логика взаимодействия для SalesEllipseDiagram.xaml
    /// </summary>
    public partial class SalesEllipseDiagram : Window
    {
        public SalesEllipseDiagram()
        {
            InitializeComponent();

            DataContext = new SaleViewModel();
        }
    }
}
