using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    //Response.Redirect("UserHome.aspx", false);
                   // Context.ApplicationInstance.CompleteRequest();

                }
                else
                {
                    db = new LotteryWebService.DBService();
                    wsr = db.GetUserCount();
                    if (wsr.Status != "0")
                    {
                        userCount.InnerText = wsr.Status + "+";
                        ActiveCount.InnerText = Application["TotalOnlineUsers"].ToString();
                    }
                    else if (wsr.Status == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
                    }
                   

                }
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    protected void BtnLogin(object sender, EventArgs e)
    {
        try
        {
            //if (log.InnerHtml == "Logout")
            //{
            //    Session.Abandon();
            //}
            //else
            //{
            //    Response.Redirect("Login.aspx", false);
            //    Context.ApplicationInstance.CompleteRequest();
            //}
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    if (btnLogin.Text== "Signout")
        //    {
        //        Session.Abandon();  
        //        Session.RemoveAll();
        //        Response.Redirect("Home.aspx", false);
        //        Context.ApplicationInstance.CompleteRequest();
        //    }
        //    else
        //    {
        //        Response.Redirect("Login.aspx", false);
        //        Context.ApplicationInstance.CompleteRequest();
        //    }
        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        //}
    }
}
//TicketCount.InnerText = "hello";
// lblDate.Text = strValue;
//DateTime end = Convert.ToDateTime("2020/07/08 18:50:00");
//string enddate = "2020/07/08 18:24:00";if (Session["Us
//DateTime start = DateTime.Now;
//int res = DateTime.Compare(end, start);
//if(res>0)
//{
//    //string script = "window.onload = function() { Hide(); };";
//    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Hide", script, true);
//    string script = "window.onload = function() { UpdateTime('2020/07/08 20:20:00'); };";
//    Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateTime", script, true);

//}
//else
//{
//    //string script = "window.onload = function() { UpdateTime('" + enddate + "'); };"
//    //Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateTime", script, true);
//    string script = "window.onload = function() { Hide(); };";
//    ScriptManager.RegisterStartupScript(this.Page,this.GetType(), "Hide", script, true);
//}

//  string script = "window.onload = function() { UpdateTime('" + time + "'); };";