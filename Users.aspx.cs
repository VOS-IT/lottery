using System;
using System.Data;
using System.Web.UI.WebControls;

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
                
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    db = new LotteryWebService.DBService();
                    Usersds = db.GetUsersInfo();
                    if (Usersds.Tables["Response"].Rows[0][0].ToString() == "1")
                    {
                        GridViewUsers.DataSource = Usersds.Tables["UsersInfo"];
                        GridViewUsers.DataBind();
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

    protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            //Determine the RowIndex of the Row whose LinkButton was clicked.
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            //Reference the GridView Row.
            GridViewRow row = GridViewUsers.Rows[rowIndex];

            //Fetch value of Name.
            string name = (row.FindControl("Email") as Label).Text;

           
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + name + "');", true);


        }
    }
}