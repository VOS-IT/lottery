using System;
using System.Data;
using System.Text;

public partial class GamesHistory : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    DataSet GamesHistoryds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    db = new LotteryWebService.DBService();
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
    protected void BtnAddGamesHistory_Click(object sender, EventArgs e)
    {
        LotteryWebService.DBService lws = new LotteryWebService.DBService();
        LotteryWebService.WebServiceResponse wsr = new LotteryWebService.WebServiceResponse();
        try
        {
            wsr = lws.InsertGamesHistoryInfo(UserName.Value.Trim(), Code.Value.Trim(), GameName.Value.Trim(), float.Parse(Reward.Value.Trim()), GameId.Value.Trim());

            if (wsr.Status == "1")
            {
                Response.Redirect("GamesHistory.aspx", false);
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