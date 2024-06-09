using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sendmessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void btnsend_Click(object sender, EventArgs e)
    {
        Datainsert();
    }


    public void Datainsert()
    {
        string dateTime = hdnDateTime.Value;
        DateTime parsedDateTime;
        if (DateTime.TryParse(dateTime, out parsedDateTime))
        {
            
            

            string insertQuery = "INSERT INTO Message (UserID,Text,Date,[Read]) VALUES (@Value1, @Value2,@Value3,@Value4)";
            SqlCommand command = new SqlCommand(insertQuery, SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();


            string Text = txtmesagge.Text;
           

            string userid = getuserıd();


            command.Parameters.AddWithValue("@Value1", userid);
            command.Parameters.AddWithValue("@Value2", Text);
            command.Parameters.AddWithValue("@Value3", parsedDateTime);
            command.Parameters.AddWithValue("@Value4", false);

            int rowsAffected = command.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('" + "Başarıyla kaydedildi." + "')</script>");
                txtmesagge.Text = "";
                

            }
            else
            {
                Response.Write("<script>alert('" + "Bir sıkıntı oluştu lütfen tekrar deneyiniz." + "')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Tarih ve saat alınamadı.')</script>");
        }

    }

    public string getuserıd()
    {

        String mail = Session["Usermail"].ToString();

        string insertQuery = "SELECT UserID FROM [User] WHERE Usermail = @Usermail";
        SqlCommand command = new SqlCommand(insertQuery, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();

        command.Parameters.AddWithValue("@Usermail", mail);

        SqlDataReader dr = command.ExecuteReader();
        string UserID = string.Empty;


        if (dr.Read())
        {
            UserID = dr["UserID"].ToString();
        }

        dr.Close(); 

        return UserID;
    }





    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Panel.aspx");
    }
}