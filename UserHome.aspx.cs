using System;
using System.Data;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserHome : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.TicketInfo ti;

    LotteryWebService.DBService db;
    LotteryWebService.WebServiceResponse wsr;

    DataSet GamesHistoryds;
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
                    db = new LotteryWebService.DBService();
                    wsr = db.GetUserCount();
                    if (wsr.Status != "0")
                    {
                        userCount.InnerText = wsr.Status + "+";
                        ActiveCount.InnerText = Application["TotalOnlineUsers"].ToString();
                    }
                    else if (wsr.Status == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
                    }

                    GamesHistoryds = db.GetGamesHistoryInfo();
                    if (GamesHistoryds.Tables["Response"].Rows[0][0].ToString() == "1")
                    {
                        DataTable dt = GamesHistoryds.Tables["GamesHistoryInfo"];

                        StringBuilder sb = new StringBuilder();
                        //Table start.
                        sb.Append("<table>");

                        //Adding HeaderRow.
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<th>" + column.ColumnName + "</th>");
                        }
                        sb.Append("</tr>");


                        //Adding DataRow.
                        foreach (DataRow row in dt.Rows)
                        {
                            sb.Append("<tr>");
                            foreach (DataColumn column in dt.Columns)
                            {

                                if (column.ColumnName.ToString() == "Reward")
                                {
                                    sb.Append("<td>" + "INR " + row[column.ColumnName].ToString() + "</td>");
                                }
                                else
                                {
                                    sb.Append("<td>" + row[column.ColumnName].ToString() + "</td>");
                                }

                            }
                            sb.Append("</tr>");
                        }

                        //Table end.
                        sb.Append("</table>");
                        GamesHistoryInfo.Text = sb.ToString();

                    }
                    else if (GamesHistoryds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + GamesHistoryds.Tables["Response"].Rows[0][1].ToString() + "');", true);
                    }
                    //lws = new LotteryWebService.DBService();
                    //ti = new LotteryWebService.TicketInfo();

                    //ti = lws.GetTicketInfo();

                    //if (ti.Status != 0)
                    //{
                    //    count.InnerText = ti.TicketCount.ToString() + "/" + 10;
                    //    TicketPrice.InnerHtml = ti.TicketPrice.ToString();
                    //    PriceAmount.InnerHtml = ti.PriceAmount.ToString();
                    //}
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
        //try
        //{
        //    // Response.Cookies["TicketNO"].Value = ti.TicketNo;
        //    Response.Redirect("UserCart.aspx", false);
        //    Context.ApplicationInstance.CompleteRequest();

        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        //}
    }

    protected void BtnWheel_Click(object sender, EventArgs e)
    {
        try
        {
            
            Response.Redirect("Spin.aspx", false);
            Context.ApplicationInstance.CompleteRequest();

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}