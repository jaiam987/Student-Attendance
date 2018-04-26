<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("View_Information.aspx");
    }


   
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Student Information</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <center><asp:Panel ID="Panel1" runat="server" Height="250px" Width="587px" BackColor="Silver" ForeColor="Black">
            <br />
            STUDENT ATTENDANCE<br />
            <br />
        <table width="100%" style="background-color:Lime"> 
            <tr>
                <td align="left" style="width: 100px; height: 46px"> 
                    <br />
                    <br />
                    LAST NAME :<br />
                    <br />
                    FIRST NAME :<br />
                    </td><td align="left" style="width: 143px; height: 46px">
                        <br />
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                *Please complete all the data given below.<br />
                *Please give a valid information.<br />
                *Please click submit/add.</tr>
        </table>
       <td> <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Data Page" /></td>
            <br />
        </asp:Panel></center>
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;</div>
    </form>
</body>
</html>
