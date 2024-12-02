using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public int instanceCount;
    public static int staticCount;

    protected void Page_Load(object sender, EventArgs e)
    {
        ++instanceCount; ++staticCount;

    }
}