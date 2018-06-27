using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLTV
{
    public partial class frmDangnhap : Form
    {
        public frmDangnhap()
        {
            InitializeComponent();
        }
        public static string _manhanvien;
        private void btDangnhap_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = clsKetnoi.laybang("SELECT manhanvien FROM NHANVIEN WHERE tendangnhap='"+txtTendangnhap.Text+"' AND matkhau = '"+txtMatkhau.Text+"'");
            if(dt!=null && dt.Rows.Count > 0)
            {
                this.Hide();
                _manhanvien = dt.Rows[0][0].ToString();
                new Main().Show();
            }
            else
            {
                MessageBox.Show("Đăng nhật thất bại");
            }
        }

        private void btNhaplai_Click(object sender, EventArgs e)
        {
            txtMatkhau.ResetText();
            txtTendangnhap.ResetText();
        }
    }
}
