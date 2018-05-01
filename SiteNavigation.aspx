<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SiteNavigation.aspx.vb" Inherits="SiteNavigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Site Navigation Page</title>
    <link href="styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <h2>Site Navigation Page</h2>

      
        <nav>
                <ul>
                    <li><a href="MathPage.aspx">Math Page</a></li> 
                    <li><a href="NumberConversions.aspx">Number Conversion</a></li>  
                    <li class="logout"><a href="Default.aspx">Logout</a></li>   
                </ul>
        </nav>
      
    </form>
</body>
</html>
