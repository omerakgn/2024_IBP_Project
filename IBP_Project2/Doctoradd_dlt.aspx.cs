using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctoradd_dlt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Datainsert()
    {
        string insertQuery = "INSERT INTO Doctor (Doctorname,Doctorsurname,Doctormail,Doctorpassword) VALUES (@Value1, @Value2,@Value3,@Value4)";
        SqlCommand command = new SqlCommand(insertQuery, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();


        string mail = txtdoctormail.Text;
        string name = txtdoctorname.Text;
        string surname = txtdoctorsurname.Text;
        string password = txtdoctorpassword.Text;


        command.Parameters.AddWithValue("@Value1", mail);
        command.Parameters.AddWithValue("@Value2", name);
        command.Parameters.AddWithValue("@Value3", surname);
        command.Parameters.AddWithValue("@Value4", password);

        int rowsAffected = command.ExecuteNonQuery();

        if (rowsAffected > 0)
        {
            Response.Write("<script>alert('" + "Başarıyla kaydedildi." + "')</script>");
            txtdoctormail.Text = "";
            txtdoctorname.Text = "";
            txtdoctorsurname.Text = "";
            txtdoctorpassword.Text = "";


        }
        else
        {
            Response.Write("<script>alert('" + "Bir sıkıntı oluştu lütfen tekrar deneyiniz." + "')</script>");
        }
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        string mail = txtdoctormail.Text;
        string name = txtdoctorname.Text;
        string surname = txtdoctorsurname.Text;
        string password = txtdoctorpassword.Text;
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

        string mail = txtdoctormail.Text;
        string name = txtdoctorname.Text;
        string surname = txtdoctorsurname.Text;
        string password = txtdoctorpassword.Text;
        if (mail == "" || name == "" || surname == "" || password == "")
        {
            Response.Write("<script>alert('" + "Lütfen kişi silmek için gerekli bilgileri giriniz." + "')</script>");
        }
        else
        {
            string queryupdate = "UPDATE Doctor" +

            " SET Doctormail = NULL ," +
            " Doctorname = NULL ," +
            " Doctorsurname = NULL ," +
            " Doctorpassword = NULL " +
            " WHERE Doctormail = @Doctormail;";


            SqlCommand command = new SqlCommand(queryupdate, SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            command.Parameters.AddWithValue("@Doctormail", txtdoctormail.Text);
            command.ExecuteNonQuery();

            Response.Write("<script>alert('" + "Başarıyla Silindi" + "')</script>");
            txtdoctormail.Text = "";
        }
        
        
    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Panel.aspx");
    }
}