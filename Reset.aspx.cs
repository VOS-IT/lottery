using lottery.Service;
using System;
using System.Web;
using System.Web.UI;
public partial class Reset : System.Web.UI.Page
{
   
    MailService.Mail ms;       
    MailService.WebServiceResponse wsr1;

    LotteryWebService.DBService db;
    LotteryWebService.WebServiceResponse wsr;
    string Emailid;
    protected void Page_Load(object sender, EventArgs e)
    {       
        
        string ResetCode;
        try
        {
            if (!IsPostBack)
            {
                ms = new MailService.Mail();
                wsr1 = new MailService.WebServiceResponse();
                string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
                int len = absoluteurl.Length;
                string url = absoluteurl.Substring(len - 10, 10);
                if (url != "Reset.aspx")
                {
                    if (!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["ResetCode"]) && !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["Id"]))
                    {
                        ResetCode = HttpContext.Current.Request.QueryString["ResetCode"];
                        Emailid = HttpContext.Current.Request.QueryString["Id"];
                        wsr1 = ms.VerifyResetPassword(ResetCode, Emailid);

                        if (wsr1.Status == "1")
                        {
                            Forget.Visible = false;
                            ResetPassword.Visible = true;

                        }
                        else if(wsr1.Status=="0")
                        {
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr1.Error + "');", true);
                        }
                    }
                    else
                    {
                        Response.Redirect("Home.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                else
                {
                    Forget.Visible = true;
                    ResetPassword.Visible = false;
                }
            }
        }
        catch (NullReferenceException)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Email Id');", true);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
        
    }

    protected void BtnForget_Click(object sender, EventArgs e)
    {
        try
        {
            ms = new MailService.Mail();
            wsr1 = new MailService.WebServiceResponse();
            string n = HttpContext.Current.Request.Url.AbsoluteUri;

            wsr1 = ms.SendForgetEmail(EmailId.Value.Trim(), HttpContext.Current.Request.Url.AbsoluteUri);
        
            if (wsr1.Status == "1")
            {
                ScriptManager.RegisterStartupScript(this.Page,this.GetType(), "script", "alert('Password Reset Link send to register mail id');window.location ='Home.aspx';", true);
               
            }
            else if (wsr1.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr1.Error + "')", true);
            }
            
        }
        catch (NullReferenceException ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Email Id');", true);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }

    protected void BtnUpdatePassword_Click(object sender, EventArgs e)
    {
        try
        {
            db = new LotteryWebService.DBService();
            wsr = new LotteryWebService.WebServiceResponse();
            string n = HttpContext.Current.Request.Url.AbsoluteUri;
            Emailid = HttpContext.Current.Request.QueryString["Id"];
            wsr = db.UpdateUserPassword(Emailid, NewPassword.Value.Trim());

            if (wsr.Status == "1")
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "alert('Password Reset Successfully');window.location ='Login.aspx';", true);
              
            }
            else if (wsr.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr1.Error + "')", true);
            }

        }
        catch (NullReferenceException ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Email Id');window.location ='Login.aspx';", true);
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}