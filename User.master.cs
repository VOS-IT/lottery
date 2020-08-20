using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    if (!IsPostBack)
        //    {
        //        if (Session["UserId"] == null)
        //        {
        //            Response.Redirect("Home.aspx", false);
        //            Context.ApplicationInstance.CompleteRequest();
        //        }
        //    }
        //}
        //catch (Exception ex)
        //{
        //   Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        //}

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        try
        {
               
                Session.RemoveAll();
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
           
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}
