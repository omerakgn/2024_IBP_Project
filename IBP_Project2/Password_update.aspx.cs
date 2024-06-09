using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Password_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnpasswordupdate_Click(object sender, EventArgs e)
    {
        Session["usermail"] = txtmail.Text;
        Session["newpassword1"] = newpassword1.Text;
        Session["newpassword2"]= newpassword2.Text;
        String mail = Session["usermail"].ToString();
        String password1 = Session["newpassword1"].ToString();
        String password2 = Session["newpassword2"].ToString();

        if (mail == "" || password1 == "" || password2 == "")
        {
            Response.Write("<script>alert('" + "Lütfen Eksik bilgi bırakmayınız ! " + "')</script>");
        }

        else
        {
            dataupdate();
        }


        
    }

    public void dataupdate()
    {
        if (newpassword1.Text == newpassword2.Text)
        {

            string queryupdate = "UPDATE [User]" +
                " SET Userpassword = @password " +
                " WHERE Usermail = @Usermail;";

            string usermail = txtmail.Text;

            SqlCommand command = new SqlCommand(queryupdate, SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            command.Parameters.AddWithValue("@Usermail", usermail);
            command.Parameters.AddWithValue("@password", newpassword1.Text);
            int rowsAffected = command.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Şifreniz Başarıyla Güncellendi!')</script>");
                newpassword1.Text = "";
                newpassword2.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Girilen mail adresi bulunamadı.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('" + "Girdiğiniz iki şifre birbirine eşit olmalı !" + "')</script>");
        }


    }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Panel.aspx");
    }
}