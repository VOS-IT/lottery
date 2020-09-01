using System;
using System.Data;

public partial class Contact : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.WebServiceResponse wsr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
        wsr = new LotteryWebService.WebServiceResponse();
        try
        {
            wsr = lws.InsertMessageInfo(Name.Value.Trim(), Email.Value.Trim(), Subject.Value.Trim(), Message.Value.Trim(),DateTime.Now);
            if (wsr.Status == "1")
            {
                Response.Redirect("Admin.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if (wsr.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
            }

        }

        catch (Exception ex)
        {          
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}