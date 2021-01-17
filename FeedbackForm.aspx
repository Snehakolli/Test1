<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 362px;
        }
        .auto-style2 {
            width: 188px;
        }
        .auto-style3 {
            width: 19px;
        }
        .auto-style4 {
            position: absolute;
            top: 63px;
            left: 895px;
            z-index: 1;
            width: 68px;
        }
        .auto-style5 {
            width: 423px;
            height: 133px;
            position: absolute;
            top: 161px;
            left: 502px;
            z-index: 1;
            right: 201px;
        }
        .auto-style6 {
            width: 188px;
            height: 23px;
        }
        .auto-style7 {
            width: 362px;
            height: 23px;
        }
        .auto-style8 {
            width: 19px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            position: absolute;
            top: 87px;
            left: 665px;
            height: 26px;
            z-index: 1;
            width: 228px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td colspan="4" style="font-weight: bolder; color: #800000; text-align: center">Feedback Form</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1" style="text-align: right">Enter your feedback here</td>
                <td class="auto-style3" style="text-align: right">&nbsp;</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="362px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="auto-style4" />
                    <asp:Button ID="Button2" runat="server" Text="View Feeback Comments" CssClass="auto-style10" OnClick="Button2_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style5">
            <Columns>
                <asp:BoundField DataField="Slno" HeaderText="Slno" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
