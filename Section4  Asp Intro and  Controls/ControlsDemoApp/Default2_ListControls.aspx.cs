using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            for (int i = 6; i < 15; i++)
            {
                ListItem li = new ListItem();
                li.Text="item"+i;
                li.Value=i.ToString();
                lst.Items.Add(li);

                ListItem li2 = new ListItem();
                li2.Text = "item" + i;
                li2.Value = i.ToString();
                lbDemo.Items.Add(li2);


                ListItem li3 = new ListItem();
                li3.Text = "item" + i;
                li3.Value = i.ToString();
                chkblDemo.Items.Add(li3);


                ListItem li4 = new ListItem();
                li4.Text = "item" + i;
                li4.Value = i.ToString();
                rbtnlDemo.Items.Add(li4);
            }
        }
    }
    protected void lst_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (sender is DropDownList)
        {
            DropDownList lst = (DropDownList)sender;
            Response.Write(lst.SelectedValue);
        }
        else if (sender is ListBox)
        {
            ListBox lst = (ListBox)sender;
          //  Response.Write(lst.SelectedValue);
            String str = "";
            foreach (var index in lbDemo.GetSelectedIndices())
            {

                str+=lbDemo.Items[index].Value+"   ";

            }
            Response.Write(str);
        }

        else if (sender is RadioButtonList)
        {

            RadioButtonList lst = (RadioButtonList)sender;
            Response.Write(lst.SelectedValue);
        }

        else if (sender is CheckBoxList)
        {
            string str = "";
            CheckBoxList chklst = (CheckBoxList)sender;
            foreach (ListItem li in chkblDemo.Items)
            {
                if (li.Selected)
                { str += li.Value + "   "; }

            }
            Response.Write(str);
        }
        
    }
}