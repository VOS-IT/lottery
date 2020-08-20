using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserAccount : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.UserInfo ui;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    lws = new LotteryWebService.DBService();
                    ui = new LotteryWebService.UserInfo();

                    ui = lws.GetUserInfo(Session["UserId"].ToString());

                    if (ui.Status != 0)
                    {
                        FirstName.Value = ui.FirstName;
                        LastName.Value = ui.LastName;
                        PhoneNumber.Value = ui.PhoneNumber;
                        Email.Value = ui.Email;
                        //Password.Value = ui.Password;
                        DOB.Value = ui.DateOfBirth;
                        Nationality.Value = ui.Nationality;
                        ID.Value = ui.IDType;
                        IDNo.Value = ui.IdNo;
                        Address.Value = ui.Address;
                        State.Value = ui.State;
                        City.Value = ui.City;
                        Code.Value = ui.Code;
                        //FirstName.Attributes.Add("readonly","readonly");
                       

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

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    lws = new LotteryWebService.DBService();
        //    wsr = new LotteryWebService.WebServiceResponse();

        //    lws = lws.UpdateUserInfo(FirstName.Value.Trim(), LastName.Value.Trim(), PhoneNumber.Value, Email.Value.Trim(), DOB.Value.Trim(), Country.SelectedItem.Value.Trim(), IDType.Items[IDType.SelectedIndex].Text.Trim(), IDNo.Value.Trim(), Address.Value.Trim(), State.Value.Trim(), City.Value.Trim(), Code.Value.Trim());
        //        if (wsr.Status == "1")
        //        {
                   
        //                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('');", true);
        //                Response.Redirect("UserAccount.aspx", false);
        //                Context.ApplicationInstance.CompleteRequest();
                   
        //        }
        //        else
        //        {
        //            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
        //        }           

            


        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        //}
    }
}