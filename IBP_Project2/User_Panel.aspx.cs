using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getusername();
            LoadAnnouncements();

        }
    }

    private void LoadAnnouncements()
    {
        string query = "SELECT Title, Announcement FROM Announcement"; 
       
        

        DataTable dt = new DataTable();

        using (SqlCommand cmd = new SqlCommand(query, SqlConnectionClass.connection))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                sda.Fill(dt);
            }
        }

        rptAnnouncements.DataSource = dt;
        rptAnnouncements.DataBind();
    }



protected void btngonder_Click(object sender, EventArgs e)
    {

        
        String Usermail = Session["Usermail"].ToString();

        Response.Redirect("Sendmessage.aspx");
    }

    protected void exitbtn_Click(object sender, EventArgs e)
    {
        ClearCache();


        Response.Redirect("Homepage.aspx", false);
        Context.ApplicationInstance.CompleteRequest();
    }
    private void ClearCache()
    {
        Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();
        Response.AppendHeader("Pragma", "no-cache");
    }

    public void getusername()
    {

        String Usermail = Session["Usermail"].ToString();

        string query = "SELECT Username , Usersurname FROM [User] WHERE Usermail = @Usermail" ;

        SqlCommand command = new SqlCommand(query, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();

        command.Parameters.AddWithValue("@Usermail", Usermail);

        SqlDataReader dr  = command.ExecuteReader();

        if (dr.Read())
        {
            lbluser.Text = dr["Username"].ToString();
            lblsurname.Text = dr["Usersurname"].ToString();
        }
        else
        {
            lbluser.Text = "Kullanıcı bulunamadı";
           
        }


    }

}