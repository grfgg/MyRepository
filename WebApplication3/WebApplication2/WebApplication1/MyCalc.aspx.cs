using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MyCalc : System.Web.UI.Page
    {
        private double num1
        {
            get { return Convert.ToDouble(ViewState["Num1"]); }
            set { ViewState["Num1"] = value; }
        }
        private String op
        {
            get { return ViewState["Op"].ToString(); }
            set { ViewState["Op"] = value; }
        }
        private Boolean opState
        {
            get { return Convert.ToBoolean(ViewState["opState"]); }
            set { ViewState["opState"] = value; }
        }
        private Boolean eqState
        {
            get { return Convert.ToBoolean(ViewState["eqState"]); }
            set { ViewState["eqState"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                num1 = 0;
                op = "+";
                opState = true;
                eqState = true;
            }

        }
        protected void ButtonNumber_Click(object sender, EventArgs e)
        {
            if (opState == true)
            {
                TextBoxResult.Text = "";
                Button btn = (Button)sender;
                TextBoxResult.Text += btn.Text;
                opState = false;
                return;
            }
            if (eqState == false || opState == false)
            {
                Button btn1 = (Button)sender;
                TextBoxResult.Text += btn1.Text;
            }
            
        }
        protected void ButtonOperator_Click(object sender, EventArgs e)
        {
            if (opState == false || eqState == false)
            {
                double num2 = Convert.ToDouble(TextBoxResult.Text);
                double result = 0.0;
                if (op == "+")
                {
                    result = num1 + num2;
                }
                else if (op == "-")
                {
                    result = num1 - num2;
                }
                else if (op == "*")
                {
                    result = num1 * num2;
                }
                else if (op == "/")
                {
                    result = num1 / num2;
                }
                num1 = result;
                TextBoxResult.Text = num1.ToString();
                opState = true;

            }
            Button btn = (Button)sender;
            op = btn.Text;
        }

        protected void ButtonEqual_Click(object sender, EventArgs e)
        {
            double num2 = Convert.ToDouble(TextBoxResult.Text);
            double result = 0.0;
            if (op == "+")
            {
                result = num1 + num2;
            }
            else if (op == "-")
            {
                result = num1 - num2;
            }
            else if (op == "*")
            {
                result = num1 * num2;
            }
            else if (op == "/")
            {
                result = num1 / num2;
            }

            TextBoxResult.Text = result.ToString();
            eqState = false;
            opState = false;
            num1 = 0;
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            num1 = 0;
            op = "+";
            opState = true;
            TextBoxResult.Text = "0";
        }

        protected void ButtonPoint_Click(object sender, EventArgs e)
        {
            TextBoxResult.Text += ".";
        }

        protected void ButtonPercent_Click(object sender, EventArgs e)
        {
            double number = Convert.ToDouble(TextBoxResult.Text);
            double result = number / 100;
            TextBoxResult.Text = result.ToString();
        }

        protected void Buttonback_Click(object sender, EventArgs e)
        {

            TextBoxResult.Text = TextBoxResult.Text.Substring(0, TextBoxResult.Text.Length - 1);
        }


      

       

        

        
    }
}
      

