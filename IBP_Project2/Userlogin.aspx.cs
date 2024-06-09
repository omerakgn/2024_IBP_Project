using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnuserlogin_Click(object sender, EventArgs e)
    {
        button_click();
    }
    public void Datacontrol()
    {

        SqlCommand command = new SqlCommand("Select * from [User]", SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();
        SqlDataReader dr = command.ExecuteReader();

        List<User> userlist = new List<User>();
        while (dr.Read())
        {

            User user = new User();
            user.UserID = dr["UserID"].ToString();
            user.Usermail = dr["Usermail"].ToString();
            user.Userpassword = dr["Userpassword"].ToString();

            userlist.Add(user);
        }

        for (int i = 0; i < userlist.Count; i++)
        {

            User user = userlist[i];
            Session["Usermail"] = txtusermail.Text;
            Session["Userpassword"] = txtuserpassword.Text;

            String usermail = Session["Usermail"].ToString();
            String userpassword = Session["Userpassword"].ToString();

            if (usermail == user.Usermail && userpassword == user.Userpassword)
            {

                Session["Usermail"] = user.Usermail;
                String Usermail = Session["Usermail"].ToString();


                Response.Redirect("User_Panel.aspx");
            }
            else
            {

                Response.Write("<script>alert('" + "Lütfen bilgilerinizi kontrol ediniz ! " + "')</script>");
            }
        }
    }
    public class User
    {
        public string UserID { get; set; }
        public string Usermail { get; set; }
        public string Userpassword { get; set; }
    }
    public void button_click()
    {
        Session["usermail"] = txtusermail.Text;
        Session["userpassword"] = txtuserpassword.Text;
        String mail = Session["usermail"].ToString();
        String password = Session["userpassword"].ToString();
        if (mail == "" || password == "")
        {
            Response.Write("<script>alert('" + "Lütfen Eksik bilgi bırakmayınız ! " + "')</script>");
        }

        else
        {
            Datacontrol();
        }
    }
}