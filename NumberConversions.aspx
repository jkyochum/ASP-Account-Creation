<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NumberConversions.aspx.vb" Inherits="NumberConversions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Number Conversion Page</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <h2>Number Conversion</h2>

     

        
        <div class="anchor"><a href="SiteNavigation.aspx" class ="pageAnchor">Back to Site Navigation</a></div>

        <label id="lblConversion">Enter a number between 0 and 255</label>

        <label for="txtInput">User Input</label><asp:TextBox ID="txtInput" runat="server"></asp:TextBox>

        <asp:CheckBox ID="cBox8Digits" runat="server" Text="Convert to 8 Digits" AutoPostBack="true" TextAlign="Left" />

        <asp:Button ID="btnConvert" runat="server" Text="Convert" />

        <label for="lblOutput">Answer:</label><br /><asp:Label ID="lblOutput" runat="server" Text=" "> </asp:Label>

        <asp:Label ID="lblError" runat="server" Text=" " CssClass="error"></asp:Label>

    


    </form>
</body>
</html>
