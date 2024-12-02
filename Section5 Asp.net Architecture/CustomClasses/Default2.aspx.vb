
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Write(DemoClass.SayHello())
        Response.Write(VBDemo.SayHello())
    End Sub
End Class
