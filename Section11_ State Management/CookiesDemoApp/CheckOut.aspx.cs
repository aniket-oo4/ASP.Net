using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["TV"] != null)
        {
            lblTV.Text = Request.Cookies["TV"].Value;
            lblTvExpire.Text = "Cart Expires in :" + Request.Cookies["TV"].Expires.ToString();
        }
        else
        {
            lblTV.Text = "0";
        }
        if (Request.Cookies["radio"] != null)
        {
            lblRadio.Text = Request.Cookies["radio"].Value;
            lblRadioExpire.Text = "Cart Expires in :"+Request.Cookies["radio"].Expires.ToString();
        }
        else
        {
            lblRadio.Text = "0";
        }
        if (Request.Cookies["telephone"] != null)
        {
            lblTelephone.Text = Request.Cookies["telephone"].Value;
            lblTeleExpire.Text ="Cart Expires in :"+Request.Cookies["telephone"].Expires.ToString();
        }
        else
        {
            lblTelephone.Text = "0";
        }
    }
}