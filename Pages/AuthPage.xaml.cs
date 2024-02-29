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
using Wpf.Entity;
using Wpf.Classes;


namespace Wpf.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }
        private void BtnMoveFirst_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(content: new FirstPage());
        }
        private void BtnMoveFirs_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(content: new Page3());
        }
        private void BtnMoveFir_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(content: new ClientPage());
        }
        private void BtnMoveFi_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(content: new Page4());
        }
        private void BtnMoveF_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(content: new Page5());
        }
    }
}



        
    

