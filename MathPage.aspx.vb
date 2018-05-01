'Jeremy Yochum
'Math calculation page

Option Strict On
Option Explicit On

Partial Class MathPage
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'creating labels for user direction
        If radMunny.Checked = True Then
            lblForBox1.Text = "How many pennies?"
            lblForBox2.Text = "How many days?"
            lblInstruct.Text = "Enter how many pennies you recieve and how many days you will receive pennies. Each day the amount is doubled from the previous day."
        ElseIf radFunny.Checked = True Then
            lblForBox1.Text = "Enter a number."
            lblForBox2.Text = "Enter another."
        End If


    End Sub
    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        Dim num1 As Decimal
        Dim num2 As Integer
        Dim funny As Decimal

        Try

            If txtBox1.Text <> "" Then
                If txtBox2.Text <> "" Then
                    If IsNumeric(txtBox1.Text) Then
                        If IsNumeric(txtBox2.Text) Then
                            If CDec(txtBox1.Text) > 0D Then
                                If CDec(txtBox2.Text) > 0D Then
                                    If Math.Floor(CDec(txtBox1.Text)) = Math.Ceiling(CDec(txtBox1.Text)) Then
                                        If Math.Floor(CDec(txtBox2.Text)) = Math.Ceiling(CDec(txtBox2.Text)) Then
                                            'input
                                            num1 = CInt(txtBox1.Text)
                                            num2 = CInt(txtBox2.Text)

                                            'processing for Munny Math
                                            If radMunny.Checked = True Then
                                                For i As Integer = 2 To num2
                                                    num1 = num1 * 2
                                                Next

                                                num1 = CDec(num1 / 100)

                                                'processing for Funny Math
                                            Else
                                                For i As Integer = 1 To num2
                                                    funny += num1
                                                Next

                                            End If

                                            'output
                                            If radMunny.Checked = True Then
                                                lblAnswer.Text = "I will recieve " & num1.ToString("C")

                                            ElseIf radFunny.Checked = True Then
                                                lblAnswer.Text = "The product of " & num1 & " and " & num2 & " is " & funny.ToString()

                                            End If

                                            'making sure the error message doesn't pop up when entries are valid
                                            lblError.Text = ""
                                        Else : lblError.Text = "Do not enter decimals."
                                            lblAnswer.Text = ""
                                        End If
                                    Else : lblError.Text = "Do not enter decimals."
                                        lblAnswer.Text = ""
                                    End If
                                Else : lblError.Text = "Enter numbers greater than Zero."
                                    lblAnswer.Text = ""
                                End If
                            Else : lblError.Text = "Enter numbers greater than Zero."
                                lblAnswer.Text = ""
                            End If
                        Else : lblError.Text = "Enter Numbers into required fields."
                            lblAnswer.Text = ""
                        End If
                    Else : lblError.Text = "Enter Numbers into required fields."
                        lblAnswer.Text = ""
                    End If
                Else : lblError.Text = "Enter amount in textboxes."
                    lblAnswer.Text = ""
                End If
            Else : lblError.Text = "Enter amount in textboxes."
                lblAnswer.Text = ""
            End If

        Catch ex As Exception
            lblError.Text = "Try Again."
        End Try

    End Sub

    Protected Sub radMunny_CheckedChanged(sender As Object, e As EventArgs) Handles radMunny.CheckedChanged
        'resetting the text boxes and labels on checked changed
        txtBox1.Text = ""
        txtBox2.Text = ""
        txtBox1.Focus()
        lblAnswer.Text = ""
        lblError.Text = ""

    End Sub

    Protected Sub radFunny_CheckedChanged(sender As Object, e As EventArgs) Handles radFunny.CheckedChanged
        'resetting the text boxes and labels on checked changed
        txtBox1.Text = ""
        txtBox2.Text = ""
        txtBox1.Focus()
        lblAnswer.Text = ""
        lblError.Text = ""
        lblInstruct.Text = "Enter two numbers and I will multiply them for you with addition."
    End Sub
End Class
