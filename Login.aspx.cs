using System;
using System.Web;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    LotteryWebService.DBService DBService;
    LotteryWebService.WebServiceResponse wsr;   

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {              
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    //string url =Request.Cookies["url"].Value;
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
            DBService = new LotteryWebService.DBService();
            wsr = new LotteryWebService.WebServiceResponse();
            wsr = DBService.VerifyUserLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (!string.IsNullOrEmpty(wsr.Status))
            {
                Session["UserId"] = wsr.Status;               
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if (wsr.Status == "0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('UserName Or Password Incorrect');", true);
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }


    
  
}