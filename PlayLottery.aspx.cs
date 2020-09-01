using System;
using System.Web;

public partial class PlayLottery : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.TicketInfo ti;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {                               
                    lws = new LotteryWebService.DBService();
                    ti = new LotteryWebService.TicketInfo();
                    ti = lws.GetTicketInfo();
                    if (ti.Status != 0)
                    {
                        //count.InnerText = ti.TicketCount.ToString() + "/" + 10;
                        TicketPrice.InnerHtml = ti.TicketPrice.ToString();
                        PriceAmount.InnerHtml = ti.PriceAmount.ToString();
                    }                
            }

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    protected void BtnBuyTicket_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(Session["UserId"] as string))
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
                //Response.Cookies["url"].Value = HttpContext.Current.Request.Url.AbsoluteUri;
            }
            else
            {
                //Response.Redirect("UserCart.aspx", false);
                //Context.ApplicationInstance.CompleteRequest();
            }
            // Response.Cookies["TicketNO"].Value = ti.TicketNo;
            

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}