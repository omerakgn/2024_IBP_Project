using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Announcementadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Datainsert()
    {
        string insertQuery = "INSERT INTO Announcement (Title,Announcement) VALUES (@Value1, @Value2)";
        SqlCommand command = new SqlCommand(insertQuery, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();

        
        string title = txttitle.Text;
        string text = txtannouncement.Text;



        command.Parameters.AddWithValue("@Value1", title);
        command.Parameters.AddWithValue("@Value2", text);
     

        int rowsAffected = command.ExecuteNonQuery();

        if (rowsAffected > 0)
        {
            Response.Write("<script>alert('" + "Başarıyla kaydedildi." + "')</script>");
            txttitle.Text = "";
            txtannouncement.Text = "";
         

        }
        else
        {
            Response.Write("<script>alert('" + "Bir sıkıntı oluştu lütfen tekrar deneyiniz." + "')</script>");
        }
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        string title= txttitle.Text;
        string text= txtannouncement.Text;

        if (title == "" || text == "")
        {
            Response.Write("<script>alert('" + "Lütfen istenilen bilgileri doldurunuz." + "')</script>");
        }
        else
        {
            Datainsert();
        }
    }
    protected void btnback_click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Panel.aspx");
    }
}