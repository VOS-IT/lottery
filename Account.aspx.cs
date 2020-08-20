using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["UserId"] != null)
                {
                    //Log.InnerHtml = "Logout";
                    btnLogin.Text = "Signout";
                    lws = new LotteryWebService.DBService();
                    wsr = new LotteryWebService.WebServiceResponse();
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                
              
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserId"] != null)
            {
                Session.Abandon();
                // Session.RemoveAll();
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }

    
}