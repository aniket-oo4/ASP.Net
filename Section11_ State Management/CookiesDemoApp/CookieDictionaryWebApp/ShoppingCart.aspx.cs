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
        Response.Redirect("CheckOut.aspx");
    }
    //generic means used for all 
    private void AddProductToCart(string name)  // created method cause we are using same body to set cookies
    {
        HttpCookie c = Request.Cookies["shoppingcart"];
        if (c == null)
        {
            c = new HttpCookie("shoppingcart"); // creeating cookie dictionary if not exists
           
        }
        if(c.Values[name]==null)// check first isthere any subkey exists with this name 
        {
            c.Values[name]="1";// setting the new product /subkey with value 1 
        }
        else
	    {
            c.Values[name] = (int.Parse(c.Values[name]) + 1).ToString() ;
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
        HttpCookie c = Request.Cookies["shoppingcart"];
        if (c == null)
        {
            return;
        }
        else
        {
            if (c.Values[name] == null||c.Values[name]=="0")
                  return;
            else
                c.Values[name] = (int.Parse(c.Values[name]) - 1).ToString();
        }
        c.Path = Request.ApplicationPath;
        Response.Cookies.Add(c);
    }

}