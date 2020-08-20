using System;
using System.Web;



public partial class Signup : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    MailService.Mail ms;
    MailService.WebServiceResponse wsr;
    LotteryWebService.WebServiceResponse wsr1;
    LotteryWebService.WebServiceResponse wsr2;

    protected void Page_Load(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
        ms = new MailService.Mail();
        wsr = new MailService.WebServiceResponse();
        wsr1 =new  LotteryWebService.WebServiceResponse();
        wsr2 = new LotteryWebService.WebServiceResponse();

    }

    
    protected void BtnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            wsr1 = lws.IsExistingUser(Email.Value.Trim());
            if (wsr1.Status=="0")
            {
                wsr2 = lws.InsertUserInfo(FirstName.Value.Trim(), LastName.Value.Trim(), PhoneNumber.Value, Email.Value.Trim(), Password.Value.Trim(), DOB.Value.Trim(), Country.SelectedItem.Value.Trim(), IDType.Items[IDType.SelectedIndex].Text.Trim(), IDNo.Value.Trim(), Address.Value.Trim(), State.Value.Trim(), City.Value.Trim(), Code.Value.Trim());
                if (wsr2.Status == "1")
                {
                    wsr = ms.SendActivationEmail(Email.Value.Trim(), FirstName.Value.Trim(), HttpContext.Current.Request.Url.AbsoluteUri, Password.Value.Trim());
                    if (wsr.Status == "1")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Registration  Success. Activation Link sent to your Registered Email ');", true);
                        Response.Redirect("Home.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr2.Error + "');", true);
                }
            }
           
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert(' Mail id is Already register with another account ');", true) ;
            }
                
            
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}