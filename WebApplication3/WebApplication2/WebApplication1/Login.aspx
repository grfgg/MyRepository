<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="学号"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBoxstuID" runat="server"></asp:TextBox>
    
                </td>
                <td>
                    <asp:CheckBox ID="CheckBoxRememberMe" runat="server" Checked="True" 
                        Text="记住用户名" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
                </td>
                <td class="style2">
    <asp:TextBox ID="TextBoxpwd" runat="server"></asp:TextBox>
                </td>
                <td class="style2">
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                验证码                    
                </td>
                <td>
                    <asp:TextBox ID="TextBoxCheckCode" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                </td>
                <td>
                    <img alt="" src="CheckCode.aspx" onclick="this.src='CheckCode.aspx?'+Math.random()" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="ButtonLogin" runat="server" Text="登录" 
            onclick="ButtonLogin_Click" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <br />
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
