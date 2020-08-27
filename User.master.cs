using System;
using System.Web.UI;
using System.Threading;
using System.Globalization;


public partial class User : System.Web.UI.MasterPage
{
    LotteryWebService.DBService db;
    LotteryWebService.UserAmountInfo uai;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                db = new LotteryWebService.DBService();
                uai = db.GetUserAmountInfo(Session["UserId"].ToString());
                if(uai.Status==1)
                {
                    Thread.CurrentThread.CurrentCulture = new CultureInfo("en-IN");
                    string str = CultureInfo.CurrentCulture.NumberFormat.CurrencySymbol;
                    float total = uai.AccountCost + uai.ReedemCost;
                    Money.InnerText = String.Format(total + str, CultureInfo.InvariantCulture);
                }
                else if(uai.Status==0)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + uai.Error + "');", true);
                }
               
            }
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        try
        {
              
                Session.RemoveAll();
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
           
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}
