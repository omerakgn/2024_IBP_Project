using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Useradd_dlt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Datainsert()
    {
        string insertQuery = "INSERT INTO [User] (Usermail,Username,Usersurname,Userpassword) VALUES (@Value1, @Value2,@Value3,@Value4)";
        SqlCommand command = new SqlCommand(insertQuery, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();


        string Usermail = txtusermail.Text;
        string Username = txtusername.Text;
        string Usersurname = txtusersurname.Text;
        string Userpassword = txtuserpassword.Text;


        command.Parameters.AddWithValue("@Value1", Usermail);
        command.Parameters.AddWithValue("@Value2", Username);
        command.Parameters.AddWithValue("@Value3", Usersurname);
        command.Parameters.AddWithValue("@Value4", Userpassword);

        int rowsAffected = command.ExecuteNonQuery();

        if (rowsAffected > 0)
        {
            Response.Write("<script>alert('" + "Başarıyla kaydedildi." + "')</script>");
            txtusermail.Text = "";
            txtusername.Text = "";
            txtusersurname.Text = "";
            txtuserpassword.Text = "";


        }
        else
        {
            Response.Write("<script>alert('" + "Bir sıkıntı oluştu lütfen tekrar deneyiniz." + "')</script>");
        }
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        string mail = txtusermail.Text;
        string name = txtusername.Text;
        string surname = txtusersurname.Text;
        string password = txtuserpassword.Text;
        if (mail == "" || name == "" || surname == "" || password == "")
        {
            Response.Write("<script>alert('" + "Lütfen istenilen bilgileri giriniz." + "')</script>");
        }
        else
        {
            Datainsert();
        }
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        string mail = txtusermail.Text;
        string name = txtusername.Text;
        string surname = txtusersurname.Text;
        string password = txtuserpassword.Text;
        if (mail == "" || name == "" || surname == "" || password == "")
        {
            Response.Write("<script>alert('" + "Lütfen kişi silmek için gerekli bilgileri giriniz." + "')</script>");
        }
        else
        {
            string queryupdate = "UPDATE [User]" +
            " SET Usermail = NULL ," +
            " Username = NULL ," +
            " Usersurname = NULL ," +
            " Userpassword = NULL " +
            " WHERE Usermail = @Usermail;";

            

            SqlCommand command = new SqlCommand(queryupdate, SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            command.Parameters.AddWithValue("@Usermail", txtusermail.Text);
            command.ExecuteNonQuery();

            Response.Write("<script>alert('" + "Başarıyla Silindi" + "')</script>");
            txtusermail.Text = "";
        }
        

    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Panel.aspx");
    }
}