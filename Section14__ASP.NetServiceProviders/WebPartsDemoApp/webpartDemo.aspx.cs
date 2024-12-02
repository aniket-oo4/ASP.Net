using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class webpartDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            foreach (WebPartDisplayMode mode in wpManager.SupportedDisplayModes)
            {
                if (mode.IsEnabled(wpManager))
                {
                    ListItem li = new ListItem(mode.Name);
                    ddlModes.Items.Add(li);
                }
            }
    }


    protected void btnToggleScope_Click(object sender, EventArgs e)
    {
        if (wpManager.Personalization.CanEnterSharedScope)
            wpManager.Personalization.ToggleScope();
    }
    protected void btnResetLayout_Click(object sender, EventArgs e)
    {
        wpManager.Personalization.ResetPersonalizationState();
    }
    protected void ddlModes_SelectedIndexChanged(object sender, EventArgs e)
    {
        wpManager.DisplayMode = wpManager.SupportedDisplayModes[ddlModes.SelectedValue];

    }
    protected override void OnPreRender(EventArgs e)
    {
        lblCurrentScope.Text = wpManager.Personalization.Scope.ToString();
        base.OnPreRender(e);
    }


}