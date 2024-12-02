using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
public partial class DataCacheDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToLongTimeString());
        Response.Cache.SetCacheability(HttpCacheability.Server);
        Response.Cache.SetMaxAge(new TimeSpan(0, 0, 30));
        //DateTime dt;
        string content;
        if (Cache["content"]==null)
        {
            //dt = DateTime.Now;
            StreamReader sr = new StreamReader(MapPath("~/Demo.txt"));
             content = sr.ReadToEnd();
             sr.Close();
            Response.Write(content + "  :: Is Read from File ");
            //Cache["content"] = content;
            System.Web.Caching.CacheDependency dep = new System.Web.Caching.CacheDependency(MapPath("~/Demo.txt"));
            Cache.Insert("content",content,dep);
            //Cache.Insert("content", content, dep, DateTime.Now.AddSeconds(10), System.Web.Caching.Cache.NoSlidingExpiration);
            //Cache.Insert("content", content, dep, System.Web.Caching.Cache.NoAbsoluteExpiration,new TimeSpan(0,0,10));

        }
        else
        {
            //dt = (DateTime)Cache["dt"];
            content =(string)Cache["content"];
            Response.Write(content + "  :: Is Read from Cache ");
        }
        //lblServerTime.Text = dt.ToLongTimeString();
    }
}