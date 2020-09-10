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

                    ShowGamesHistoryInfo();
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
    protected void ShowGamesHistoryInfo()
    {
        db = new LotteryWebService.DBService();
        GamesHistoryds = db.GetGamesHistoryInfo();       
        if (GamesHistoryds.Tables["Response"].Rows[0][0].ToString() == "1")
        {
            GridViewGamesHistory.DataSource = GamesHistoryds.Tables["GamesHistoryInfo"];
            GridViewGamesHistory.DataBind();
            GamesHistoryds.Dispose();
        }
        else if (GamesHistoryds.Tables["Response"].Rows[0][0].ToString() == "0")
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + GamesHistoryds.Tables["Response"].Rows[0][1].ToString() + "');", true);
        }
        else
        {
            Response.Redirect("Home.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}