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
    public partial class frmNhanvien : Form
    {
        public frmNhanvien()
        {
            InitializeComponent();
        }

        private void frmNhanvien_Load(object sender, EventArgs e)
        {
            clsKetnoi.dulieu_datagribview(dgNhanvien, "SELECT manhanvien,hoten,diachi,tendangnhap FROM NHANVIEN");
        }

        private void dgNhanvien_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMa.Text = dgNhanvien[0, e.RowIndex].Value.ToString();
            txtTen.Text = dgNhanvien[1, e.RowIndex].Value.ToString();
            txtDiachi.Text = dgNhanvien[2, e.RowIndex].Value.ToString();
            txtTendangnhap.Text = dgNhanvien[3, e.RowIndex].Value.ToString();
        }

        private void btCapnhat_Click(object sender, EventArgs e)
        {
            string chuoi = "UPDATE nhanvien SET hoten=N'"+txtTen.Text+"', diachi=N'"+txtDiachi.Text+"', tendangnhap='"+txtTendangnhap.Text+"' WHERE manhanvien = '"+txtMa.Text+"'";
            if (clsKetnoi.dieuchinh(chuoi))
                MessageBox.Show("Cập nhật thành công");
            else
                MessageBox.Show("Cập nhật không thành công");
            clsKetnoi.dulieu_datagribview(dgNhanvien, "SELECT manhanvien,hoten,diachi,tendangnhap FROM NHANVIEN");
        }
    }
}
