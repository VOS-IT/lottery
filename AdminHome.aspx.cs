using System;


public partial class AdminHome : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    db = new LotteryWebService.DBService();
                    wsr = db.GetUserCount();
                    if (wsr.Status != "0")
                    {
                       
                        userCount.InnerText = wsr.Status;
                        ActiveCount.InnerText = Application["TotalOnlineUsers"].ToString();
                    }
                    else if (wsr.Status == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
                    }
                }
                else
                {
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
               

            }


        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }
}