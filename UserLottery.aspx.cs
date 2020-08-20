using System;


public partial class UserLottery : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.TicketInfo ti;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
               
                if (string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                else
                {
                  lws = new LotteryWebService.DBService();
                     ti= new LotteryWebService.TicketInfo();

                    ti = lws.GetTicketInfo();

                    if (ti.Status != 0)
                    {
                        count.InnerText = ti.TicketCount.ToString() + "/" + 10;
                        TicketPrice.InnerHtml = ti.TicketPrice.ToString();
                        PriceAmount.InnerHtml = ti.PriceAmount.ToString();
                    }
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
              // Response.Cookies["TicketNO"].Value = ti.TicketNo;
                Response.Redirect("UserCart.aspx", false);
                Context.ApplicationInstance.CompleteRequest();           
            
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}