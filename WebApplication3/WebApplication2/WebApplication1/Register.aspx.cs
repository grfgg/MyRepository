using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {

            string stuID = TextBoxstuID.Text;
            string pwd = TextBoxpwd.Text;
            string name = TextBoxName.Text;

            string connectionString = "Server=(local);Database=TestDB;Integrated Security=true;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string queryString = "insert into Student values('" + stuID + "','" + pwd + "','" + name + "');";
            SqlCommand command = new SqlCommand(queryString, connection);

            int r = command.ExecuteNonQuery();
          
            //Response.Write("<script>alert('" + connection.State.ToString() + "');</script>");
            connection.Close();

            if (r==1) Response.Write("<script>alert('注册成功');</script>");
            else Response.Write("<script>alert('注册失败');</script>");
        }
    }
}
