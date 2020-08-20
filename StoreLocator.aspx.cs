using System;
using System.Data;
using System.Text;

public partial class StoreLocator : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    DataSet Ticketsds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    db = new LotteryWebService.DBService();
                    Ticketsds = db.GetStoreInfo();
                    if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "1")
                    {
                        DataTable dt = Ticketsds.Tables["StoreInfo"];                      


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
                                sb.Append("<td>" + row[column.ColumnName].ToString() + "</td>");
                            }
                            sb.Append("</tr>");
                        }

                        //Table end.
                        sb.Append("</table>");
                        StoreInfo.Text = sb.ToString();
                        

                    }
                    else if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Ticketsds.Tables["Response"].Rows[0][1].ToString() + "');", true);
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