using lottery.Service;
using System;
using System.Web;
using System.Web.UI;
public partial class Reset : System.Web.UI.Page
{
   private string Url;
   private string ResetCode;
   private string Emailid;
   private int Len;

    LotteryWebService.DBService DBService;
    LotteryWebService.WebServiceResponse wsr;

    MailService.Mail MailService;
    MailService.WebServiceResponse wsr1;
    
    protected void Page_Load(object sender, EventArgs e)
    {   
        try
        {
            if (!IsPostBack)
            {
                MailService = new MailService.Mail();
                wsr1 = new MailService.WebServiceResponse();
                Url = HttpContext.Current.Request.Url.AbsoluteUri;
                Len = Url.Length;
                Url = Url.Substring(Len - 10, 10);
                if (Url != "Reset.aspx")
                {
                    if (!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["ResetCode"]) && !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["Id"]))
                    {
                        ResetCode = HttpContext.Current.Request.QueryString["ResetCode"];
                        Emailid = HttpContext.Current.Request.QueryString["Id"];
                        wsr1 = MailService.VerifyResetPassword(ResetCode, Emailid);
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
            MailService = new MailService.Mail();
            wsr1 = new MailService.WebServiceResponse();
            Url = HttpContext.Current.Request.Url.AbsoluteUri;
            wsr1 = MailService.SendForgetEmail(EmailId.Value.Trim(), HttpContext.Current.Request.Url.AbsoluteUri);        
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
            DBService = new LotteryWebService.DBService();
            wsr = new LotteryWebService.WebServiceResponse();
            //string Url = HttpContext.Current.Request.Url.AbsoluteUri;
            Emailid = HttpContext.Current.Request.QueryString["Id"];
            wsr = DBService.UpdateUserPassword(Emailid, NewPassword.Value.Trim());
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