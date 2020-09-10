using System;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewTicket : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    LotteryWebService.WebServiceResponse wsr;
    DataSet Ticketsds;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    ShowTicketInfo();
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
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        GridViewLotteryInfo.EditIndex = e.NewEditIndex;
        ShowTicketInfo();
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        Label id = GridViewLotteryInfo.Rows[e.RowIndex].FindControl("lblTicketNo") as Label;
        DropDownList Status = GridViewLotteryInfo.Rows[e.RowIndex].FindControl("Status") as DropDownList;
        db = new LotteryWebService.DBService();
        wsr = db.UpdateTicketInfo(id.Text, Status.Text);
        if (wsr.Status == "1")
        {
            GridViewLotteryInfo.EditIndex = -1;           
            ShowTicketInfo();
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        GridViewLotteryInfo.EditIndex = -1;
        ShowTicketInfo();
    }
    protected void ShowTicketInfo()
    {
        db = new LotteryWebService.DBService();
        Ticketsds = db.GetTicketsInfo();
        if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "1")
        {
            GridViewLotteryInfo.DataSource = Ticketsds.Tables["TicketsInfo"];
            GridViewLotteryInfo.DataBind();
            Ticketsds.Dispose();
        }
        else if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "0")
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Ticketsds.Tables["Response"].Rows[0][1].ToString() + "');", true);
        }
        else
        {
            Response.Redirect("Home.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}