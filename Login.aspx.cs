using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("UserHome.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }


            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }


    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            lws = new LotteryWebService.DBService();
            wsr = new LotteryWebService.WebServiceResponse();
            wsr = lws.VerifyUserLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (wsr.Status != "")
            {
                Session["UserId"] = wsr.Status;
                Response.Redirect("UserHome.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            else if (wsr.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('UserName Or Password Incorrect');", true);
            }


        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}