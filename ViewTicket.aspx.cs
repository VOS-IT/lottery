using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewTicket : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    DataSet Ticketsds;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {            
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    db = new LotteryWebService.DBService();
                    Ticketsds = db.GetTicketsInfo();
                    if(Ticketsds.Tables["Response"].Rows[0][0].ToString()=="1")
                    {
                        GridView1.DataSource = Ticketsds.Tables["TicketsInfo"];
                        GridView1.DataBind();
                        Ticketsds.Dispose();

                    }
                    else if(Ticketsds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Ticketsds.Tables["Response"].Rows[0][1].ToString() + "');", true);
                    }
                    else 
                    {
                        Response.Redirect("Home.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
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