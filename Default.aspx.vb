'Jeremy Yochum
'Project: Week 5, Chapter 6

Option Strict On
Option Explicit On

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnEnter_Click(sender As Object, e As EventArgs) Handles btnEnter.Click
        Dim user As String
        Dim pass As String  'declaring the variables to be used

        Try

            If txtUsername.Text <> "" Then
                If txtPassword.Text <> "" Then
                    If Not IsNumeric(txtUsername.Text) Then
                        If Not IsNumeric(txtPassword.Text) Then
                            If txtUsername.Text = "mickey" Then
                                If txtPassword.Text = "mouse" Then

                                    'input
                                    user = txtUsername.Text
                                    pass = txtPassword.Text

                                    'processing

                                    Response.Redirect("SiteNavigation.aspx", False)  'correct username and password

                                    'output

                                Else : Response.Redirect("LoginError.aspx")  'incorrect username and password
                                End If
                            Else : Response.Redirect("LoginError.aspx")
                            End If
                        Else : Response.Redirect("LoginError.aspx")
                        End If
                    Else : Response.Redirect("LoginError.aspx")
                    End If
                Else : Response.Redirect("LoginError.aspx")
                End If
            Else : Response.Redirect("LoginError.aspx")
            End If

        Catch ex As Exception
            Response.Redirect("LoginError.aspx")
        End Try


    End Sub
End Class
