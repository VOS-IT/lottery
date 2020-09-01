using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Terms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnTerms_Click(object sender, EventArgs e)
    {
        const int bufferLength = 10000;
        byte[] buffer = new Byte[bufferLength];
        int length = 0;
        Stream download = null;
        try
        {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Terms and Conditions.pdf");            
           
            download = new FileStream(Server.MapPath("~/doc/Terms and Conditions.pdf"),FileMode.Open,FileAccess.Read);
            do
            {
                if (Response.IsClientConnected)
                {
                    length = download.Read(buffer, 0, bufferLength);
                    Response.OutputStream.Write(buffer, 0, length);
                    buffer = new Byte[bufferLength];
                }
                else
                {
                    length = -1;
                }
            }
            while (length > 0);
            Response.Flush();
            Response.End();

        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
        finally
        {
            if (download != null)
                download.Close();
        }
    }
}