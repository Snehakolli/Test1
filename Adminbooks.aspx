<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminbooks.aspx.cs" Inherits="Adminbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 32%;
        }
        .auto-style6 {
            width: 29%;
        }
        .auto-style8 {
            height: 23px;
            width: 32%;
        }
        .auto-style9 {
            height: 23px;
            width: 29%;
        }
        .auto-style11 {
            height: 30px;
            width: 32%;
        }
        .auto-style12 {
            height: 30px;
            width: 29%;
        }
        .auto-style13 {
            height: 30px;
            width: 153px;
        }
        .auto-style14 {
            width: 153px;
        }
        .auto-style15 {
            height: 23px;
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td style="text-align: center" class="auto-style6">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td style="text-align: center" class="auto-style6">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td style="text-align: center; color: #800000; font-weight: bold;" class="auto-style9">BOOKS</td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td style="text-align: center" class="auto-style9"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td style="text-align: center" class="auto-style9"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td style="text-align: right" class="auto-style11">
                    <asp:Button ID="btnview" runat="server" Text="VIEW BOOKS" OnClick="btnview_Click" />
                </td>
                <td style="text-align: center" class="auto-style12">
                    <asp:Button ID="btnadd" runat="server" Text="ADD BOOKS" OnClick="btnadd_Click" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="btndelete" runat="server" Text="DELETE BOOKS" OnClick="btndelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:MultiView ID="MultiView1" runat="server">
                         
                        <asp:View ID="View1" runat="server">
                                  
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2" style="text-align: right">
                                        <asp:TextBox ID="txtviewsearch" runat="server" OnTextChanged="txtviewsearch_TextChanged"></asp:TextBox>
                                        &nbsp;<asp:ImageButton ID="ImageButtonviewsearch" runat="server" Height="20px" ImageUrl="~/Image/Icon_Search.png" OnClick="ImageButtonviewsearch_Click" Width="16px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2" colspan="3">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1070px">
                                            <Columns>
                                                <asp:BoundField DataField="BId" HeaderText="BOOK ID" />
                                                <asp:BoundField DataField="Bname" HeaderText="TITLE OF THE BOOK" />
                                                <asp:BoundField DataField="Authors" HeaderText="AUTHOR" />
                                                <asp:BoundField DataField="Edition" HeaderText="EDITION" />
                                                <asp:BoundField DataField="status" HeaderText="STATUS" />
                                                <asp:BoundField DataField="department" HeaderText="DEPARTMENT" />
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                            </table>
                          
                        </asp:View>
                         <asp:View ID="View2" runat="server">
                            <table style="width:100%;">
                                <tr>
                                    <td style="text-align: right" class="auto-style3">BOOK ID</td>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">TITLE OF THE BOOK</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txtbook" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" class="auto-style4">AUTHOR</td>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" class="auto-style4">EDITION</td>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="txtedition" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" class="auto-style3">STATUS</td>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" class="auto-style3">DEPARTMENT</td>
                                    <td class="auto-style3"></td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txtdepartment" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnadddd" runat="server" Text="ADD" OnClick="btnadddd_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                         <asp:View ID="View3" runat="server">
                            
                             <table style="width:100%;">
                                 <tr>
                                     <td class="auto-style2"></td>
                                     <td class="auto-style2"></td>
                                     <td class="auto-style2" style="text-align: right">
                                         <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
                                         <asp:ImageButton ID="imgebtnsearch" runat="server" Height="21px" Width="16px" ImageUrl="~/Image/Icon_Search.png" OnClick="imgebtnsearch_Click" />
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td style="text-align: right">BOOK ID</td>
                                     <td>&nbsp;</td>
                                     <td>
                                         <asp:TextBox ID="txtiddelete" runat="server"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td style="text-align: right">&nbsp;</td>
                                     <td>&nbsp;</td>
                                     <td>
                                         <asp:Button ID="btndeleteee" runat="server" OnClick="btndeleteee_Click" Text="DELETE" />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" colspan="3" style="text-align: center">
                                         <asp:GridView ID="GridView2" runat="server" EditRowStyle-VerticalAlign="Middle" Width="1061px">
                                             <Columns>
                                                 <asp:BoundField DataField="BId" HeaderText="BOOK ID" />
                                                 <asp:BoundField DataField="Bname" HeaderText="TITLE OF THE BOOK" />
                                                 <asp:BoundField DataField="Authors" HeaderText="AUTHOR" />
                                                 <asp:BoundField DataField="Edition" HeaderText="EDITION" />
                                                 <asp:BoundField DataField="status" HeaderText="STATUS" />
                                                 <asp:BoundField DataField="department" HeaderText="DEPARTMENT" />
                                             </Columns>
                                         </asp:GridView>
                                     </td>
                                 </tr>
                             </table>
                            
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
