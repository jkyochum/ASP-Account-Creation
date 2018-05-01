<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="txtUsername">
        <h2>Login</h2>

      

        <label for="txtUsername">Username</label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        
        <label for="txtPassword">Password</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    
        <asp:Button ID="btnEnter" runat="server" Text="Enter"/>

        <asp:Button ID="btnCreate" runat="server" Text="Create Account" PostBackURL="UserAccountCreation.aspx"/>
      
    </form>
</body>
</html>
