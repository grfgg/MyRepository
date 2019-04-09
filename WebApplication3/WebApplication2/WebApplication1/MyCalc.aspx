<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCalc.aspx.cs" Inherits="WebApplication1.MyCalc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 76%;
            height: 416px;
        }
        .style5
        {
            height: 84px;
        }
        .style6
        {
            height: 78px;
        }
        .style7
        {
            width: 170px;
            height: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="5" class="style5">
                    <asp:TextBox ID="TextBoxResult" runat="server" Height="84px" Width="800px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Button ID="Button1" runat="server" Height="78px" Text="7" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button2" runat="server" Height="78px" Text="8" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button3" runat="server" Height="78px" Text="9" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Buttonback" runat="server" Height="78px" Text="<--" 
                        Width="63px" onclick="Buttonback_Click" />
                </td>
                <td class="style7">
                    <asp:Button ID="ButtonClear" runat="server" Height="78px" Text="C" 
                        Width="63px" onclick="ButtonClear_Click"  />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Button ID="Button4" runat="server" Height="78px" Text="4" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button7" runat="server" Height="78px" Text="5" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button8" runat="server" Height="78px" Text="6" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button9" runat="server" Height="78px" Text="*" 
                        Width="63px" onclick="ButtonOperator_Click" />
                </td>
                <td class="style7">
                    <asp:Button ID="Button10" runat="server" Height="78px" Text="/" 
                        Width="63px" onclick="ButtonOperator_Click" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Button ID="Button11" runat="server" Height="78px" Text="1" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button12" runat="server" Height="78px" Text="2" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button14" runat="server" Height="78px" Text="3" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button15" runat="server" Height="78px" Text="+" 
                        Width="63px" onclick="ButtonOperator_Click" />
                </td>
                <td class="style7">
                    <asp:Button ID="Button20" runat="server" Height="78px" Text="-" 
                        Width="63px" onclick="ButtonOperator_Click" />
                </td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Button ID="Button16" runat="server" Height="78px" Text="0" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="Button17" runat="server" Height="78px" Text="00" 
                        Width="63px" onclick="ButtonNumber_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="ButtonPoint" runat="server" Height="78px" Text="." 
                        Width="63px" onclick="ButtonPoint_Click" />
                </td>
                <td class="style6">
                    <asp:Button ID="ButtonPercent" runat="server" Height="78px" Text="%" 
                        Width="63px" onclick="ButtonPercent_Click" />
                </td>
                <td class="style7">
                    <asp:Button ID="ButtonEqual" runat="server" Height="78px" Text="=" 
                        Width="63px" onclick="ButtonEqual_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
