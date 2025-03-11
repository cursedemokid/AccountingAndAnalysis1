using AccountingAndAnalysis1.Models;

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace AccountingAndAnalysis1
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static AccountingAndSalesAnalysisEntities3 context = new AccountingAndSalesAnalysisEntities3();
    }
}
