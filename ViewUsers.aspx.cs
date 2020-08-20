using System;
using System.Data;

public partial class ViewUsers : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    DataSet Usersds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                {
                    db = new LotteryWebService.DBService();
                    Usersds = db.GetUsersInfo();
                    if (Usersds.Tables["Response"].Rows[0][0].ToString() == "1")
                    {
                        GridView1.DataSource = Usersds.Tables["UsersInfo"];
                        GridView1.DataBind();
                        Usersds.Dispose();

                    }
                    else if (Usersds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Usersds.Tables["Response"].Rows[0][1].ToString() + "');", true);
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