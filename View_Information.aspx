<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Information.aspx.cs" Inherits="View_Information" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View Information</title>
</head>
<body><center>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        LISTS OF STUDENTS<br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="241px" Width="657px" BackColor="#E0E0E0">
            <div>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" Width="617px">
                       
                        <Columns>
                        <asp:TemplateField HeaderText="Last Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ID") %> '></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage="Enter an ID"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem,"ID") %>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#C0FFC0" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name") %> '></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                    ErrorMessage="Enter a Last Name"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <%# DataBinder.Eval(Container.DataItem,"Name") %>
                            </ItemTemplate>
                            <HeaderStyle BackColor="#C0FFC0" />
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" >
                            <HeaderStyle BackColor="#C0FFC0" />
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" >
                            <HeaderStyle BackColor="#C0FFC0" />
                        </asp:CommandField>
                         </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" />
                &nbsp; &nbsp;&nbsp;
            </div>
        </asp:Panel>
    
    </div>
    </form></center>
</body>
</html>
