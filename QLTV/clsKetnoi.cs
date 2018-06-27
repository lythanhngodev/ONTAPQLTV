using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace QLTV
{
    class clsKetnoi
    {
        public SqlConnection conn;
        public clsKetnoi()
        {
            conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=quanlythuvien1;Persist Security Info=True;User ID=sa;Password=system");
            conn.Open();
        }
        public void dongketnoi()
        {
            if(conn.State == ConnectionState.Open)
                conn.Close();
        }
        public static bool dieuchinh(string chuoi)
        {
            clsKetnoi kn = new clsKetnoi();
            if ((new SqlCommand(chuoi, kn.conn)).ExecuteNonQuery() > 0)
            {
                kn.dongketnoi();
                return true;
            }
            else
            {
                kn.dongketnoi();
                return false;
            } 
        }
        public static DataTable laybang(string chuoi)
        {
            clsKetnoi kn = new clsKetnoi();
            SqlDataAdapter da = new SqlDataAdapter(new SqlCommand(chuoi, kn.conn));
            try
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch { return null; }
        }
        public static void dulieu_datagribview(DataGridView dg, string chuoi)
        {
            DataTable dt = new DataTable();
            dt = clsKetnoi.laybang(chuoi);
            if (dt.Rows.Count > 0)
            {
                dg.DataSource = dt;
            }
            else
            {
                MessageBox.Show("Không có dữ liệu hiển thị");
            }
        }
    }
}
