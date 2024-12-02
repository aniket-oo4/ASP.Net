using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // that means it was its firt time loaded postback means sended again
        {
          
            //  below part is keep nside because if it is outside then it r=gives erro because of there is valueToCompare
            cmpDateOfGraduation.ValueToCompare = DateTime.Now.ToShortDateString(); // seted the comparison value 
            //
            //Page.Validate(); // this method validatest
            //Page.Validate("");
            Page.Validate("searchGroup");//Groupname  Group specific 
        }


        Response.Write(DateTime.Now.ToLongTimeString());
      

    }
    protected void cstmvUsername_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 8 || args.Value.Length > 15)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // code for counsuming data from controls
        if (!Page.IsValid)
        {
            return;
        }
        Response.Write("Saved");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Write("CANCELLED");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            return;
        }
        Response.Write("SearchResult:");
    }
}