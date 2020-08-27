﻿using System;

using System.Web;

public partial class Reset : System.Web.UI.Page
{
    MailService.WebServiceResponse wsr;
    MailService.Mail ms;
       
    MailService.WebServiceResponse wsr1;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string EmailId;
        //try
        //{
           
        //    if (!IsPostBack)
        //    {
        //        ms = new MailService.Mail();
        //        wsr = new MailService.WebServiceResponse();
        //        string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
        //        int len = absoluteurl.Length;
        //        string url = absoluteurl.Substring(len - 10, 10);
        //        if (url != "Login.aspx")
        //        {
        //            if (!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["Id"]))
        //            {
        //                EmailId = HttpContext.Current.Request.QueryString["Id"];
        //                wsr = ms.VerifyActivationEmail(activationCode);

        //                if (wsr.Status == "1")
        //                {
        //                    Response.Redirect("Login.aspx", false);
        //                    Context.ApplicationInstance.CompleteRequest();
        //                }
        //                else
        //                {
        //                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
        //                }
        //            }
        //            else
        //            {
        //                Response.Redirect("Signup.aspx", false);
        //                Context.ApplicationInstance.CompleteRequest();
        //            }

        //        }

        //        else
        //        {
        //            Response.Redirect("Signup.aspx", false);
        //            Context.ApplicationInstance.CompleteRequest();
        //        }
        //    }



        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        //}
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
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if (wsr1.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr1.Error + "')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Email Id');", true);
            }


        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}