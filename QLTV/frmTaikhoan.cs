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
    public partial class frmTaikhoan : Form
    {
        public frmTaikhoan()
        {
            InitializeComponent();
        }

        private void frmTaikhoan_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = clsKetnoi.laybang("SELECT * FROM nhanvien WHERE manhanvien = '"+frmDangnhap._manhanvien+"'");
            txtMa.Text = frmDangnhap._manhanvien;
            txtTen.Text = dt.Rows[0][1].ToString();
            txtDiachi.Text = dt.Rows[0][2].ToString();
            txtTendangnhap.Text = dt.Rows[0][3].ToString();
        }

        private void btCapnhat_Click(object sender, EventArgs e)
        {
            string sql = "UPDATE nhanvien SET hoten=N'"+txtTen.Text+"',diachi=N'"+txtDiachi.Text+"', tendangnhap='"+txtTendangnhap.Text+"' WHERE manhanvien='"+frmDangnhap._manhanvien+"'";
            if (clsKetnoi.dieuchinh(sql))
                MessageBox.Show("Cập nhật thành công");
            else
                MessageBox.Show("Cập nhật không thành công");
        }
    }
}
