using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_EditMyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSetProfile_Click(object sender, EventArgs e)
    {
        Profile.RealName = txtRealName.Text;
        Profile.BackColor = System.Drawing.Color.FromName(txtColor.Text);
        Profile.Address.Line1 = txtLine1.Text;
        Profile.Address.Street = txtStreet.Text;
        Profile.Address.City = txtCity.Text;
    }
}