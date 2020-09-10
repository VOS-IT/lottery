using System;
using System.Web;


public partial class Activation : System.Web.UI.Page
{
    MailService.WebServiceResponse wsr;
    MailService.Mail ms;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        ms = new MailService.Mail();
        wsr = new MailService.WebServiceResponse();
        string ActivationCode,EmailId;
        try
        {
            if (!IsPostBack)
            {
                string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
                int len = absoluteurl.Length;

                string url = absoluteurl.Substring(len - 10, 10);
                if (url != "Login.aspx")
                {
                    if(!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["ActivationCode"]) && !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["Id"]))
                    {
                        ActivationCode = HttpContext.Current.Request.QueryString["ActivationCode"];
                        EmailId = HttpContext.Current.Request.QueryString["Id"];
                        wsr = ms.VerifyActivationEmail(ActivationCode, EmailId);
                        
                        if (wsr.Status == "1")
                        {
                            Response.Redirect("Login.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('"+wsr.Error+"');", true);
                        }
                    }
                    else
                    {
                        Response.Redirect("Signup.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    
                }

                else
                {
                    Response.Redirect("Signup.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }



        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}