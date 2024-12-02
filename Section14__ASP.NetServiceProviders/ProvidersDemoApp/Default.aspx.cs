using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        MembershipCreateStatus status;
        MembershipUser user;
        //user = System.Web.Security.Membership.CreateUser("user_04", "user_04", "user_04@test.com", "user_04", "user_04", true, out status);
        user = System.Web.Security.Membership.CreateUser(txtUser.Text, txtUser.Text, txtUser.Text + "@test.com", txtUser.Text, txtUser.Text, true, out status);
        Response.Write("status::" + status);
        Response.Write("SuccessFlage::" + status.HasFlag(MembershipCreateStatus.Success).ToString());

    }
    protected void btnCreateRole_Click(object sender, EventArgs e)
    {
        Roles.CreateRole(txtRole.Text);
        ltrRoleStatus.Text = "ok";
    }
    protected void btnBindUserAndRole_Click(object sender, EventArgs e)
    {
        Roles.AddUserToRole(txtUserName.Text, txtRoleName.Text);
        //Roles.FindUsersInRole
    }
    protected void btnFIndUsersInRole_Click(object sender, EventArgs e)
    {
        lblUsersinRole.Text = "";
        
         String [] usersInRole= Roles.GetUsersInRole(txtSearchRole.Text);
         foreach (var user in usersInRole)
         {
             lblUsersinRole.Text += ", " + user;
         }
    }
}