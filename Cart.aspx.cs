using System;


public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {                 
                    
                    LotteryWebService.DBService lws = new LotteryWebService.DBService();
                    LotteryWebService.TicketInfo ti = new LotteryWebService.TicketInfo();

                    ti = lws.GetTicketInfo();

                    if (ti.Status != 0)
                    {
                        Availability.InnerHtml = ti.TicketCount.ToString();
                        ProductPrice.InnerHtml = ti.TicketPrice.ToString();

                    }
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
               

            }

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (btnLogin.Text == "Signout")
            {
                Session.Abandon();
                // Session.RemoveAll();
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }

    protected void BtnCheckOut_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Payment.aspx", false);
            Context.ApplicationInstance.CompleteRequest();

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }
}