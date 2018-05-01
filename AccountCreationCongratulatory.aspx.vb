'Programmer: Jeremy Yochum
'Project: YochumJExCh07

Option Explicit On
Option Strict On

Partial Class AccountCreationCongratulatory
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load





        lblPassword.Text = CStr(Session("Password"))
            lblUser.Text = CStr(Session("UserID"))


    End Sub

    
End Class
