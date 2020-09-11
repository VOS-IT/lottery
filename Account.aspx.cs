using System;
using System.Data;
using System.Text;


public partial class Account : System.Web.UI.Page
{
    LotteryWebService.DBService DBService;
    LotteryWebService.UserInfo ui;
    LotteryWebService.WebServiceResponse wsr;
    
    DataSet Levelds;
    StringBuilder sb;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    DBService = new LotteryWebService.DBService();
                    ui = new LotteryWebService.UserInfo();
                    ui = DBService.GetUserInfo(Session["UserId"].ToString());
                   
                    if (ui.Status != 0)
                    {
                        FirstName.Value = ui.FirstName;
                        LastName.Value = ui.LastName;
                        PhoneNumber.Value = ui.PhoneNumber;
                        Email.Value = ui.EmailId;
                        ReferralCode.Value = ui.ReferralCode;                        

                        //FirstName.Attributes.Add("readonly","readonly");
                    }
                    Levelds = DBService.GetReferralInfo(Session["UserId"].ToString());
                    String Level = Levelds.Tables["Response"].Rows[0][0].ToString();
                    int LevelCount = int.Parse(Level.Substring(Level.Length - 1));
                    if (LevelCount > 0)
                    {
                        sb = new StringBuilder();
                        //sb.Append("<div class='payment-history-area bg-color fix area-padding' style='background:none;padding:23px;'>");
                        for (int i = 1; i <= LevelCount; i++)
                        {

                            DataTable dt = Levelds.Tables["Level" + i + "Info"];
                            sb.Append("<div class='container' style='width:617px;'>");
                            sb.Append("<div class='row'>");
                            sb.Append("<div class='col-md-12 col-sm-12 col-xs-12'>");
                            sb.Append("<div class='section-headline text-center'>");
                            sb.Append("<h3>level" + i + "</h3>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("<div class='row'>");
                            sb.Append("<div class='col-md-12 col-sm-12 col-xs-12'>");
                            sb.Append("<div class='deposite-content'>");
                            sb.Append("<div class='diposite-box' style='width:33%;'>");
                            sb.Append("<div class='deposite-table'>");
                            sb.Append("<table>");
                            sb.Append("<tr>");
                            //foreach (DataColumn column in dt.Columns)
                            //{
                            sb.Append("<th>" + dt.Columns[0].ColumnName.ToString() + "</th>");
                            //}
                            sb.Append("</tr>");



                            foreach (DataRow row in dt.Rows)
                            {
                                sb.Append("<tr>");

                                //foreach (DataColumn column in dt.Columns)
                                //{
                                sb.Append("<td>" + row[0].ToString() + "</td>");
                                //}
                                sb.Append("</tr>");
                            }

                            sb.Append("</table>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                            sb.Append("</div>");
                        }
                        //sb.Append("</div>");
                        LevelInfo.Text = sb.ToString();
                    }


                    else if (Levelds.Tables["Response"].Rows[0][0].ToString() == "Level0")
                    {
                        sb = new StringBuilder();
                        sb.Append("<div class='payment-history-area bg-color fix area-padding' style='background:none;padding:23px;'>");
                        sb.Append("<div class='container'>");
                        sb.Append("<div class='row'>");
                        sb.Append("<div class='col-md-12 col-sm-12 col-xs-12'>");
                        sb.Append("<div class='section-headline text-center'>");
                        sb.Append("<h3>No Referrals</h3>");
                        sb.Append("</div>");
                        sb.Append("</div>");
                        sb.Append("</div>");
                        sb.Append("</div>");
                        sb.Append("</div>");
                        LevelInfo.Text = sb.ToString();
                    }
                    else if (Levelds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Levelds.Tables["Response"].Rows[0][1].ToString() + "');", true);
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
}