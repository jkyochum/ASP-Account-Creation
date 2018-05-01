<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AccountCreationCongratulatory.aspx.vb" Inherits="AccountCreationCongratulatory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Created</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <h2>Congratulations. You Created an Account!</h2>

    <div class="anchor"><a href="Default.aspx" class="pageAnchor">Back to Login</a></div>

        <p>Congratulations on successfully creating a new account. Your new user ID and password are:</p>

        
        <div class="congrat"><label>User ID:</label><asp:Label ID="lblUser" runat="server" Text=" "></asp:Label></></div>

        <div class="congrat"><label>Password:</label><asp:Label ID="lblPassword" runat="server" Text=" "></asp:Label></div>
        

    </form>
</body>
</html>
