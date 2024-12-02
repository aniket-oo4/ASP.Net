using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            for (int i = 0; i < 5; i++)
            {

                ListItem li = new ListItem(); //created list item 
                li.Text = "Item" + i;  // set the text 
                li.Value = i.ToString(); // set the value property 
                lstLeft.Items.Add(li); // added to  the listbox 
            }

        }
    }

    protected void btnMoveToRight_Click(object sender, EventArgs e)
    {
        ListItem li = lstLeft.SelectedItem;
        lstLeft.Items.Remove(li);
        li.Selected = false;
        lstRight.Items.Add(li);

    }

    protected void btnMoveToLeft_Click(object sender, EventArgs e)
    {
        ListItem li = lstRight.SelectedItem;
        lstRight.Items.Remove(li);
        li.Selected = false;
        lstLeft.Items.Add(li);
   
    }
}