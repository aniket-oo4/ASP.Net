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
        HttpCookie dic = Request.Cookies["shoppingcart"];

       if (dic == null)
       {
           return;
       }

       //--------------------------------------
        if (dic.Values["TV"] != null)
        {
            lblTV.Text = dic.Values["TV"];
        
        }
        else
        {
            lblTV.Text = "0";
        }

        //--------------------------------------
        if (dic.Values["radio"] != null)
        {
            lblRadio.Text = dic.Values["radio"];
   
        }
        else
        {
            lblRadio.Text = "0";
        }
        //-------------------------------------- -
        if (dic.Values["telephone"] != null)
        {
            lblTelephone.Text = dic.Values["telephone"];
          
        }
        else
        {
            lblTelephone.Text = "0";
        }
    }
}