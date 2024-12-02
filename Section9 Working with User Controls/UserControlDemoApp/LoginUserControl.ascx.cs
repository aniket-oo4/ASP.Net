using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public delegate void AuthenticatedHandler(object sender, AuthenticatedEventArgs e);  // custom delegate forcreating event 
public class AuthenticatedEventArgs : EventArgs  // custom class to share username to event handler
{
    public string AuthenticatedUserName { get; set; }


}

public partial class LoginUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(BackgroundColor))
        {
            BackgroundColor = "Grey";
        }


    }
 
    Boolean IsAuthenticated { get; set; }// property
    public string ReturnUrl = "";
    public string InvalidUserMessage { get; set; }
    public string BackgroundColor { get; set; }
    public string UsernameLabel
    {
        get
        {
            return ltrUserName.Text;
        }
        set
        {
            ltrUserName.Text=value;
        }
    }
    public string PasswordLabel
    {
        get
        {
            return ltrPassword.Text;
        }
        set
        {
            ltrPassword.Text = value;
        }
    }
    //public event EventHandler Authenticated;  // event with Predefined Delegate
    public event AuthenticatedHandler Authenticated; // event with custom delegate
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string un = txtUserName.Text;
        string pw = txtPassword.Text;
        IsAuthenticated = true;
        if (un != ""&& pw!=""&& un==pw)
        {

            if (Authenticated != null)
            {
                //Authenticated(this, EventArgs.Empty);// it works only for EventHandler delegate
               AuthenticatedEventArgs args=new  AuthenticatedEventArgs(){AuthenticatedUserName=un};
                Authenticated(this,args);// raising event 
            }
           /* if (String.IsNullOrEmpty(ReturnUrl))
                Response.Redirect("~/");
            else
            {
                Response.Redirect(ReturnUrl);
            }*/
           
        }
        else
        {
           // Response.Write("<b>confirm(\"Invalid UserNAme and PAssword\")</b>");
            IsAuthenticated = false;
            if (String.IsNullOrEmpty(InvalidUserMessage))  // check conditions multiple times 
            {
                lblError.Text = "Invalid UserNAme and PAssword'";
            }
            else
            {
             
                lblError.Text = InvalidUserMessage.ToString();
            }
            
     
        }
    }
}
