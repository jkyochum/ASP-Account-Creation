'Programmer: Jeremy Yochum
'Project: YochumJExCh07

Option Strict On
Option Explicit On

Partial Class UserAccountCreation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'turning off unobtrusive validation mode
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None

    End Sub

  
    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate

        'setting length for userID
        If Len(args.Value) >= 5 Then
            args.IsValid = True
        Else
            args.IsValid = False
        End If

    End Sub

    Protected Sub btnCreate_Click(sender As Object, e As EventArgs) Handles btnCreate.Click

        'checking for validity then storing in session
        If Page.IsValid Then
            If Session IsNot Nothing Then
                Session("UserID") = txtUserID.Text
                Session("Password") = txtPassword.Text
            End If
            Response.Redirect("AccountCreationCongratulatory.aspx")
        End If

    End Sub
End Class
