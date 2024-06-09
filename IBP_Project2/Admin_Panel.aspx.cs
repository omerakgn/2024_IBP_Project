using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getadminname();

    }
    private void ClearCache()
    {
        Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();
        Response.AppendHeader("Pragma", "no-cache");
    }

    protected void exitbtn_Click(object sender, EventArgs e)
    {
        ClearCache();

        
        Response.Redirect("Homepage.aspx", false);
        Context.ApplicationInstance.CompleteRequest();

    }

    protected void lnkannouncement_Click(object sender, EventArgs e)
    {
        Response.Redirect("Announcementadd.aspx", false);
    }

    protected void Lnkmessage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminmessages.aspx", false);
    }

    public void getadminname()
    {

        String Adminmail = Session["Adminmail"].ToString();

        string query = "SELECT Adminname , Adminsurname FROM Admin WHERE Adminmail = @Adminmail";

        SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();

        command.Parameters.AddWithValue("@Adminmail", Adminmail);

        SqlDataReader dr = command.ExecuteReader();

        if (dr.Read())
        {
            lblname.Text = dr["Adminname"].ToString();
            lblsurname.Text = dr["Adminsurname"].ToString();
        }
        else
        {
            lblname.Text = "Kullanıcı bulunamadı";

        }


    }
}