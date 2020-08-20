using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    
                    LotteryWebService.DBService lws = new LotteryWebService.DBService();
                    LotteryWebService.TicketInfo ti = new LotteryWebService.TicketInfo();

                    ti = lws.GetTicketInfo();

                    if (ti.Status != 0)
                    {
                        Availability.InnerHtml = ti.TicketCount.ToString();
                        //Availability.InnerHtml = "2";
                        ProductPrice.InnerHtml = ti.TicketPrice.ToString();
                        total.InnerHtml = (int.Parse(ti.TicketPrice.ToString()) * 1).ToString();
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }


            }

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    protected void BtnCheckOut_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Payment.aspx", false);
            Context.ApplicationInstance.CompleteRequest();

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }
}