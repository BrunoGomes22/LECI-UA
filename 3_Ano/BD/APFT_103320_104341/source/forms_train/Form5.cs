using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace forms_train
{
    public partial class Form5 : Form
    {
        private Form1 form1;
        private Form2 form2;
        private Form3 form3;
        private Form4 form4;

        public Form5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(form1 == null || form1.IsDisposed )
            {
                form1 = new Form1();
            }
            form1.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (form2 == null || form2.IsDisposed)
            {
                form2 = new Form2();
            }
            form2.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (form3 == null || form3.IsDisposed)
            {
                form3 = new Form3();
            }
            form3.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (form4 == null || form4.IsDisposed)
            {
                form4 = new Form4();
            }
            form4.Show();
        }
    }
}
