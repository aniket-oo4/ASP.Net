using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
	public Helper()
	{
        
	}
    public static string GetKeyValue(string key)
    {
         string val= HttpContext.Current.Request.QueryString[key];
         return val;
    }
}