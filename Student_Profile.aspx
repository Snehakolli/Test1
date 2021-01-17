<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Profile.aspx.cs" Inherits="Student_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 30px;
        }
        .auto-style3 {
            width: 607px;
        }
        .auto-style7 {
            width: 28px;
        }
        .auto-style8 {
            width: 101%;
            height: 315px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style21 {
            width: 28px;
            height: 23px;
        }
        .auto-style23 {
            width: 22px;
        }
        .auto-style24 {
            width: 712px;
            height: 26px;
        }
        .auto-style25 {
            width: 28px;
            height: 26px;
        }
        .auto-style26 {
            height: 26px;
        }
        .auto-style35 {
            width: 750px;
            height: 23px;
        }
        .auto-style36 {
            width: 750px;
        }
        .auto-style39 {
            width: 712px;
        }
        .auto-style40 {
            width: 713px;
        }
        .auto-style41 {
            width: 712px;
            height: 30px;
        }
        .auto-style42 {
            width: 28px;
            height: 30px;
        }
        .auto-style43 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <table class="auto-style8">
            <tr>
               <td colspan="3" style="text-align: center; font-weight: bolder; color: #800000">
                    <asp:Label ID="Label1" runat="server" Text="My Account"></asp:Label>
                </td>
            </tr>
        </tr>
             <tr>
            <td  colspan="3"  align="center">
                <asp:Button ID="Button12" runat="server" CssClass="btn" Text="VIEW ACCOUNT" 
                    onclick="Button12_Click" />
&nbsp;<asp:Button ID="Button13" runat="server" CssClass="btn" Text="EDIT ACCOUNT" 
                    onclick="Button13_Click" />
            &nbsp;<asp:Button ID="Button14" runat="server" CssClass="btn" Text="CHANGE PASSWORD" 
                    onclick="Button14_Click" />
            </td>
        </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <table class="auto-style9" style="center" >
                            <tr>
                                <td style="text-align: center">
                                    <asp:View ID="View1" runat="server">
                                        <table style="width:100%;">
                                            <tr>
                                                <td class="auto-style35" style="text-align: right">
                                                    <asp:Label ID="lblFname" runat="server" Text="First Name"></asp:Label>
                                                </td>
                                                <td class="auto-style21"></td>
                                                <td style="text-align: left" class="auto-style16">
                                                    <asp:Label ID="lblnamef" runat="server"></asp:Label>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="auto-style36" style="text-align: right">
                                                    <asp:Label ID="lblLname" runat="server" Text="Last Name"></asp:Label>
                                                </td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td style="text-align: left">
                                                    <asp:Label ID="lblNameL" runat="server"></asp:Label>
                                                </td>
                                               
                                            </tr>
                                            <tr>
                                                <td class="auto-style36" style="text-align: right">
                                                    <asp:Label ID="lblUsername" runat="server" Text="User Name"></asp:Label>
                                                </td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td style="text-align: left">
                                                    <asp:Label ID="lblUname" runat="server"></asp:Label>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="auto-style35" style="text-align: right">
                                                    <asp:Label ID="lblrollno" runat="server" Text="Roll Number"></asp:Label>
                                                </td>
                                                <td class="auto-style21"></td>
                                                <td style="text-align: left" class="auto-style16">
                                                    <asp:Label ID="lblroll" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style36" style="text-align: right">
                                                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                                </td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td style="text-align: left">
                                                    <asp:Label ID="lblmail" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style36" style="text-align: right">
                                                    <asp:Label ID="lblContactno" runat="server" Text="Contact Number"></asp:Label>
                                                </td>
                                                <td class="auto-style7">&nbsp;</td>
                                                <td style="text-align: left">
                                                    <asp:Label ID="lblContact" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                      </table>
                                    </asp:View>
                                </td>
                            </tr>

                           
                        </table>
                         <asp:View ID="View2" runat="server">
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style24" style="text-align: right">
                                        <asp:Label ID="lbleditFname" runat="server" Text="First Name"></asp:Label>
                                    </td>
                                    <td class="auto-style25"></td>
                                    <td style="text-align: left" class="auto-style26">
                                        <asp:TextBox ID="txteditnameF" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txteditnameF" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41" style="text-align: right">
                                        <asp:Label ID="lbleditLname" runat="server" Text="Last Name"></asp:Label>
                                    </td>
                                    <td class="auto-style42"></td>
                                    <td style="text-align: left" class="auto-style43">
                                        <asp:TextBox ID="txteditnameL" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txteditnameL" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style41" style="text-align: right">
                                        <asp:Label ID="lbleditRollno" runat="server" Text="Roll Number"></asp:Label>
                                    </td>
                                    <td class="auto-style42"></td>
                                    <td style="text-align: left" class="auto-style43">
                                        <asp:TextBox ID="txteditRoll" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txteditRoll" ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style24" style="text-align: right">
                                        <asp:Label ID="lbleditEmail" runat="server" Text="Email"></asp:Label>
                                    </td>
                                    <td class="auto-style25"></td>
                                    <td style="text-align: left" class="auto-style26">
                                        <asp:TextBox ID="txteditEmail" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txteditEmail" ErrorMessage="*Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39" style="text-align: right">
                                        <asp:Label ID="lbledditcontactno" runat="server" Text="Contact Number"></asp:Label>
                                    </td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txteditContact" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txteditContact" ErrorMessage="*Invalid " ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39" style="text-align: right">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnedit" runat="server" Text="Update" OnClick="btnedit_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style39" style="text-align: right">&nbsp;</td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                            </table>
                        </asp:View>
                         <asp:View ID="View3" runat="server">
                            <table style="width:100%;">
                                <tr>
                                    <td class="auto-style40" style="text-align: right">
                                        <asp:Label ID="lblnewpass" runat="server" Text="Enter New Password"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style40" style="text-align: right">
                                        <asp:Label ID="lblconfirmpass" runat="server" Text="Confirm New Password"></asp:Label>
                                    </td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td style="text-align: left">
                                        <asp:TextBox ID="txtconfirmnewpass" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtconfirmnewpass" ErrorMessage="*Password Mismatch"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style40" style="text-align: right">&nbsp;</td>
                                    <td class="auto-style23">&nbsp;</td>
                                    <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnsubmitnewpass" runat="server" Text="Submit" OnClick="btnsubmitnewpass_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
