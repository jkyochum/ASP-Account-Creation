'Programmer: Jeremy Yochum
'Project: Chapter 6-02

Option Strict On
Option Explicit On

Partial Class NumberConversions
    Inherits System.Web.UI.Page

    Protected Sub btnConvert_Click(sender As Object, e As EventArgs) Handles btnConvert.Click
        Dim input As Integer
        Dim output As Integer

        lblError.Text = ""

        Try

            If txtInput.Text <> "" Then
                If IsNumeric(txtInput.Text) Then
                    If CInt(txtInput.Text) >= 0 And CInt(txtInput.Text) <= 255 Then
                        If Math.Floor(CDec(txtInput.Text)) = Math.Ceiling(CDec(txtInput.Text)) Then

                            'input
                            input = CInt(txtInput.Text)

                            'processing

                            For i As Integer = 7 To 0 Step -1
                                If 2 ^ i <= input Then
                                    input = CInt(input - (2 ^ i))
                                    output += CInt(10 ^ i)
                                End If
                            Next

                            'output
                            If cBox8Digits.Checked = True Then
                                lblOutput.Text = output.ToString("D8")
                            Else
                                lblOutput.Text = output.ToString
                            End If


                        Else : lblError.Text = "Enter a whole number"
                            lblOutput.Text = ""
                        End If
                    Else : lblError.Text = "Must be from 0-255"
                        lblOutput.Text = ""
                    End If
                Else : lblError.Text = "Must be a number"
                    lblOutput.Text = ""
                End If
            Else : lblError.Text = "Please enter something"
                lblOutput.Text = ""
            End If


        Catch ex As Exception
            lblError.Text = "Something went wrong, sorry."
        End Try

    End Sub

   
End Class
