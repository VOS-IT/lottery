using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SoftGames : System.Web.UI.Page
{
    //LotteryWebService.DBService lws;
    //LotteryWebService.TicketInfo ti;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //if (!IsPostBack)
            //{
                
                //else
                //{
                //    //lws = new LotteryWebService.DBService();
                //    //ti = new LotteryWebService.TicketInfo();

                //    //ti = lws.GetTicketInfo();

                //    //if (ti.Status != 0)
                //    //{
                //    //    count.InnerText = ti.TicketCount.ToString() + "/" + 10;
                //    //    TicketPrice.InnerHtml = ti.TicketPrice.ToString();
                //    //    PriceAmount.InnerHtml = ti.PriceAmount.ToString();
                //    //}
                //}
           // }

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    protected void BtnWheel_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(Session["userid"] as string))
            {
                Response.Redirect("login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Spin.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
           

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}