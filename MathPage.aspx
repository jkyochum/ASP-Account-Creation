<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MathPage.aspx.vb" Inherits="MathPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles.css" rel="stylesheet" />
    <title>Math Page</title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus ="txtBox1">
      
        <h2>Math Calculation Page</h2>
         
        <%--link back to site navigation--%>
        <div class="anchor"><a href="SiteNavigation.aspx" class="pageAnchor">Site Navigation Page</a></div>

        <%--radio buttons for user to pick--%>
        
        <div><asp:RadioButton ID="radMunny" runat="server" Text="Money Math" Checked="True" GroupName="grpRadio" AutoPostBack="true" TextAlign="Left" /></div>
        <div><asp:RadioButton ID="radFunny" runat="server" Text="Funny Math" GroupName="grpRadio" AutoPostBack="true" TextAlign="Left" /></div>
        

        <%--instructions for user--%>
        <asp:Label ID="lblInstruct" runat="server" Text=""></asp:Label>

        <%--Two textboxes for user--%>
        <div>
        <asp:Label ID="lblForBox1" runat="server" Text=" " AssociatedControlID="txtBox1"></asp:Label><asp:TextBox ID="txtBox1" runat="server"></asp:TextBox>
        <asp:Label ID="lblForBox2" runat="server" Text=" " AssociatedControlID="txtBox2"></asp:Label><asp:TextBox ID="txtBox2" runat="server"></asp:TextBox>
        </div>
    

        <%--button to calculate--%>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" />

    

        <%--labels to output info--%>
        <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblError" runat="server" Text="" CssClass="error"></asp:Label>
   
    

    </form>
</body>
</html>
