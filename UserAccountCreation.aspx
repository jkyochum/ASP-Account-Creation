<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UserAccountCreation.aspx.vb" Inherits="UserAccountCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Your Account</title>
<link href="styles.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
   
        <h2>Create New Account</h2>

        <div class="anchor"><a href="Default.aspx" class="pageAnchor">Back to Login</a></div>
        <%--Last Name--------------%>
        <label for="txtLastName">Last Name</label><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Last Name" ControlToValidate="txtLastName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Last Name: Enter Letters" ControlToValidate="txtLastName" ValidationExpression="[A-Za-z]+$" Display="None" SetFocusOnError="True"></asp:RegularExpressionValidator>
        
         <%--First Name------------%>
        <label for="txtFirstName">First Name</label><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your First Name" ControlToValidate="txtFirstName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="First Name: Enter Letters" ControlToValidate="txtFirstName" ValidationExpression="[A-Za-z]+$" Display="None" SetFocusOnError="True"></asp:RegularExpressionValidator>
        
        <%--Birth Date-------------%>
        <label for="txtBirthDate">Date of Birth</label><asp:TextBox ID="txtBirthDate" runat="server">mm/dd/yyyy</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Date of Birth" ControlToValidate="txtBirthDate" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Date must be in the format '01/01/1955' between 01/01/1955 and 12/31/1995" Type="Date" MaximumValue="12/31/1995" MinimumValue="01/01/1955" ControlToValidate="txtBirthDate" Display="None" SetFocusOnError="True"></asp:RangeValidator>

        <%--User ID----------------%>
        <label for="txtUserID">User ID</label><asp:TextBox ID="txtUserID" runat="server"></asp:TextBox><asp:Label ID="userInstruct" runat="server" Text=" (Must be at least 5 characters long)" CssClass="instruct"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter a User ID" ControlToValidate="txtUserID" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="User ID must be at least 5 characters long" ControlToValidate="txtUserID" Display="None" SetFocusOnError="True" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

        <%--Password---------------%>
        <label for="txtPassword">Password</label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><asp:Label ID="pwInstruct" runat="server" Text=" (Two capital letters followed by *, -, or =, followed by four numbers from 2 to 8)" CssClass="instruct"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter a Password" ControlToValidate="txtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password format is incorrect (ex. 'LW-6432')" ControlToValidate="txtPassword" ValidationExpression="[A-Z]{2}(\*|-|=)[2-8]{4}" Display="None" SetFocusOnError="True"></asp:RegularExpressionValidator>

        <%--RE-Password------------%>
        <label for="txtVerifyPassword">Verify Password</label><asp:TextBox ID="txtVerifyPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="You Must Retype Your Password" ControlToValidate="txtVerifyPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password verification is incorrect" ControlToValidate="txtVerifyPassword" ControlToCompare="txtPassword" Display="None" SetFocusOnError="True"></asp:CompareValidator>

        <%--button-----------------%>
        <asp:Button ID="btnCreate" runat="server" Text="Create Account"/>

        <%--validation summary control--%>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please Fix the Following Errors:" BorderStyle="Solid" BorderColor="Black" BorderWidth="2px" Width="30%" ShowMessageBox="False" CssClass="errorSummary"/>

    </form>
</body>
</html>
