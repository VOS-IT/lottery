using System;
using System.Web;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.WebServiceResponse wsr;

    MailService.Mail ms;
    //MailService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
              
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    //string url =Request.Cookies["url"].Value;
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
                Response.Redirect("Home.aspx", false);
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


    protected void Forget_Click(object sender, EventArgs e)
    {
       
    }
    protected void BtnForget_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    ms = new MailService.Mail();
        //    wsr = new MailService.WebServiceResponse();
        //    string n = HttpContext.Current.Request.Url.AbsoluteUri;
        //    wsr = ms.SendForgetEmail(EmailId.Value.Trim(), HttpContext.Current.Request.Url.AbsoluteUri);

        //    if (wsr.Status == "1")
        //    {
        //        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
        //        // Response.Redirect("Home.aspx", false);
        //        //Context.ApplicationInstance.CompleteRequest();
        //    }
        //    else if (wsr.Status == "0")
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "')", true);
        //    }
        //    else
        //    {
        //        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Email Id');", true);
        //    }

        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        //}
    }
}