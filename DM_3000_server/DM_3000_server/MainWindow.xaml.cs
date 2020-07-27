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
using SimpleTCP;

namespace DM_3000_server
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        SimpleTcpServer server;

        private void MainWindow_load(object sender, EventArgs e)
        {
            server = new SimpleTcpServer();
            server.Delimiter = 0x13;// enter
            server.StringEncoder = Encoding.UTF8;
            server.DataReceived += Server_DataReceived;




        }



        private void Server_DataReceived(object sender, SimpleTCP.Message e)
        {


            txtStatus.Dispatcher.Invoke((Action)delegate ()
            {

                txtStatus.Text += e.MessageString;
            });

            server.Broadcast(e.MessageString);

        }





        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            txtStatus.Text += "Server start...";
            System.Net.IPAddress ip = System.Net.IPAddress.Parse(txtHost.Text);
            server.Start(ip, Convert.ToInt32(txtPort.Text));


        }

        private void btnStop_Click(object sender, RoutedEventArgs e)
        {

            if (server.IsStarted)
                server.Stop();
            txtStatus.Text = ("\n Server stoped");

        }

    }
}
