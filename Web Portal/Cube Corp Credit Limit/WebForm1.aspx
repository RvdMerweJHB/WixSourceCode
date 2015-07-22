<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="CUBE.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
            ForeColor="Red" ValidationExpression="^\d{5}-C\d{3}_POS\d{1}" 
            Enabled="False"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <asp:RadioButton ID="rdoYes" runat="server" AutoPostBack="True" GroupName="g" 
            Text="Yes" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            Checked="True" GroupName="g" Text="No" />
    
    </div>
    </form>
</body>
</html>
