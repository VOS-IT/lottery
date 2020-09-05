using System;

public partial class Admin : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    LotteryWebService.AdminInfo ai;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {

                    Response.Redirect("AdminHome.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }                
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            db = new LotteryWebService.DBService();
            ai = new LotteryWebService.AdminInfo();
            ai = db.VerifyAdminLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (ai.Status == "1")
            {
                Session["Name"] = ai.Name;
                Session["Type"]= ai.Type;
                Response.Redirect("AdminHome.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if(ai.Status=="0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ai.Error + "')", true);
            }


        }
        catch (Exception ex)
        {

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}