using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                if (Request.Cookies["preuser"] != null)
                {
                    TextBoxstuID.Text = Request.Cookies["preuser"].Value;
                }
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string stuID = TextBoxstuID.Text;
            string pwd = TextBoxpwd.Text;

            if (CheckBoxRememberMe.Checked)
            {
                Response.Cookies["preuser"].Value = stuID;
                Response.Cookies["preuser"].Expires = DateTime.Now.AddDays(7);
            }

            string connectionString = "Server=(local);Database=TestDB;Integrated Security=true;";
            SqlConnection connection = new SqlConnection(connectionString);
            bool verified = false;
            connection.Open();
            string queryString = "SELECT * FROM Student;";
            SqlCommand command = new SqlCommand(queryString, connection);

            SqlDataReader reader = command.ExecuteReader();
            while(reader.Read())
            {
                if(stuID==reader[0].ToString() && pwd==reader[1].ToString())
                {
                    verified=true;
                }
            }
            reader.Close();
                //Response.Write("<script>alert('" + connection.State.ToString() + "');</script>");
            connection.Close();

            if (verified)
            {
                Session["username"] = stuID;
                Response.Write("<script>alert('登录成功');location='PrivatePage.aspx'</script>");
            }
            else Response.Write("<script>alert('登录失败');</script>");
        }
    }
}
