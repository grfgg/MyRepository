<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="学号"></asp:Label>
        <asp:TextBox ID="TextBoxstuID" runat="server"></asp:TextBox>
    
    </div>
    <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
    <asp:TextBox ID="TextBoxpwd" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="姓名 "></asp:Label>
    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    <p>
        <asp:Button ID="ButtonRegister" runat="server" Text="注册" 
            onclick="ButtonRegister_Click" />
    </p>
    </form>
</body>
</html>
