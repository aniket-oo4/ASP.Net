using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnRadioAddToCart_Click(object sender, EventArgs e)
    {
        AddProductToCart("radio");
    }
    protected void btnTelephoneAddToCart_Click(object sender, EventArgs e)
    {
        AddProductToCart("telephone");
    }
    protected void btnTvAddToCart_Click(object sender, EventArgs e)
    {
        AddProductToCart("TV");
    }
    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CheckOut.aspx");
    }
    //generic means used for all 
    private void AddProductToCart(string name)  // created method cause we are using same body to set cookies
    {
        HttpCookie c = Request.Cookies[name];
        if (c == null)
        {
            c = new HttpCookie(name);
            c.Value = "1";
        }
        else
        {
            c.Value = (int.Parse(c.Value) + 1).ToString();
        }
        c.Expires = DateTime.Today.AddDays(3);
        c.Path = Request.ApplicationPath;
        Response.Cookies.Add(c);//always remember that lastly add the cookies to the Response.Cookies collection 

    }

    protected void btnRadioRemoveFromCart_Click(object sender, EventArgs e)
    {
        RemoveFromCart("radio");
    }
    protected void btnTelephoneRemoveFromCart_Click(object sender, EventArgs e)
    {
        RemoveFromCart("telephone");
    }
    protected void btnTvRemoveFromCart_Click(object sender, EventArgs e)
    {
        RemoveFromCart("TV");
    }
    //Generic method for removing the item s
    private void RemoveFromCart(string name)
    {
        HttpCookie c = Request.Cookies[name];
        if (c == null)
        {
            return;
        }
        else
        {
            if(c.Value=="0")
                c.Expires = DateTime.Today.AddDays(-1);
            else
                c.Value = (int.Parse(c.Value) - 1).ToString();
        }
        c.Path = Request.ApplicationPath;
        Response.Cookies.Add(c);
    }

}