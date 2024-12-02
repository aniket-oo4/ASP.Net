using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Secured_Page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (User.IsInRole("r2"))
            {
                btnOnlyForR2.Visible =true;//we achieve that ie this section will be visble only to specific roles 
            }
            else
            {
                btnOnlyForR2.Visible = false;
            }

        }
    }
}