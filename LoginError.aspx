<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginError.aspx.vb" Inherits="LoginError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Error</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

   <h2>Login Error</h2>

<asp:label runat="server" text="You have incorrectly entered a username or password. Please return to the login page and try again." CssClass="error"></asp:label>
       

        <asp:Button ID="btnReturnLogin" runat="server" Text="Return" PostBackUrl="Default.aspx" />

    </form>
</body>
</html>
