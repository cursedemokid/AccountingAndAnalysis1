using AccountingAndAnalysis1.AppData;
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
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        List<Employee> _employees = App.context.Employee.ToList();
        public AuthorizationWindow()
        {
            InitializeComponent();
        }

        private void EntryBtn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(LoginTbx.Text) && string.IsNullOrEmpty(PasswordPb.Password))
            {
                FeedbackService.Warning("Вы ничего не написали в поля логина и пароля! Заполните данные и повторите попытку");
            }
            else if (string.IsNullOrEmpty(LoginTbx.Text))
            {
                FeedbackService.Warning("Вы ничего не написали в поле логина! Заполните данные и повторите попытку");
            }
            else if (string.IsNullOrEmpty(PasswordPb.Password))
            {
                FeedbackService.Warning("Вы ничего не написали в поле пароля! Заполните данные и повторите попытку");
            }
            else
            {

                Employee employee = _employees.FirstOrDefault(em => em.Login == LoginTbx.Text && em.Password == PasswordPb.Password);
                if (employee != null)
                {
                    if (employee.PositionId != 2)
                    {
                        FeedbackService.Error("У вас недостаточно прав для открытия этого приложения!");
                    }
                    else
                    {
                        FeedbackService.Information($"Добро пожаловать, {employee.FullName}!");
                        MainWindow mainWindow = new MainWindow();
                        mainWindow.Show();
                        Close();
                    }
                }
                else
                {
                    FeedbackService.Error("Вы неправильно ввели данные! Проверьте введенные логин и пароль");
                }

            }
        }
    }
}
