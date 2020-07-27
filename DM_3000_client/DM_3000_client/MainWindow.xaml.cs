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

namespace DM_3000_client
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
        SimpleTcpClient client;
        private string username;
        public MainWindow(string usr)
        {
            InitializeComponent();
            username = usr;
            this.Title = usr;
        }

        private void ChatScreentextBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            btnConnect.IsEnabled = false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            wlctxt.Text = "Welcome " + username + "!";
            client = new SimpleTcpClient();
            client.StringEncoder = Encoding.UTF8;
            client.DataReceived += Client_DataReceived;

        }

        private void Client_DataReceived(object sender, SimpleTCP.Message e)
        {
            txtStatus.Dispatcher.Invoke((Action)delegate ()
            {

                txtStatus.Text += e.MessageString;

            });

        }

        private void send_btn_Click(object sender, EventArgs e)
        {

            client.WriteLineAndGetReply("\n" + username + ": " + txtMessage.Text, TimeSpan.FromSeconds(0));
            txtMessage.Text = "";
        }

        private void connect_btn_Click(object sender, RoutedEventArgs e)
        {
            client.Connect(txtHost.Text, Convert.ToInt32(txtPort.Text));
            //client.Write("You are now connected");
            txtStatus.Text = (username + " is now connected");
        }

    }
}
