using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.Cookies["name"].Value;
        string age = Request.Cookies["age"].Value;
        string qualification = Request.Cookies["qualification"].Value;
        string country = Request.Cookies["country"].Value;


        lblummary.Text = "Name:" + name + "<br/> Age:" + age + "<br/> Qualification :" + qualification + "<br/> Country:" + country;
        

    }
}