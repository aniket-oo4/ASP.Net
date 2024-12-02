using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_ViewMyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetProfile_Click(object sender, EventArgs e)
    {

        lblRealName.Text = Profile.RealName;
        lblColor.Text = Profile.BackColor.ToString();
        lblLine1.Text = Profile.Address.Line1;
        lblStreet.Text = Profile.Address.Street;
        lblCity.Text = Profile.Address.City;

    }

}