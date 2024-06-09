using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    public void Datacontrol()
    {

        SqlCommand commandListIl = new SqlCommand("Select * from Admin", SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();
        SqlDataReader dr = commandListIl.ExecuteReader();

        List<Admin> adminlist = new List<Admin>();
        while (dr.Read())
        {

            Admin admin = new Admin();
            admin.AdminID = dr["AdminID"].ToString();
            admin.Adminmail = dr["Adminmail"].ToString();
            admin.Adminpassword = dr["Adminpassword"].ToString();

            adminlist.Add(admin);
        }

        for (int i = 0; i < adminlist.Count; i++)
        {

            Admin admin = adminlist[i];
            Session["Adminmail"] = txtadminmail.Text;
            Session["Adminpassword"] = txtadminpassword.Text;

            String adminmail = Session["Adminmail"].ToString();
            String adminpassword = Session["Adminpassword"].ToString();

            if (adminmail == admin.Adminmail && adminpassword == admin.Adminpassword)
            {

                Session["Adminmail"] = admin.Adminmail;
                String Adminmail = Session["Adminmail"].ToString();


                Response.Redirect("Admin_Panel.aspx");
            }
            else
            {

                Response.Write("<script>alert('" + "Lütfen bilgilerinizi kontrol ediniz ! " + "')</script>");
            }
        }
    }
    public class Admin
    {
        public string AdminID { get; set; }
        public string Adminmail { get; set; }
        public string Adminpassword { get; set; }
    }
    public void button_click()
    {
        Session["mail"] = txtadminmail.Text;
        Session["password"] = txtadminpassword.Text;
        String mail = Session["mail"].ToString();
        String password = Session["password"].ToString();
        if (mail == "" || password == "")
        {
            Response.Write("<script>alert('" + "Lütfen Eksik bilgi bırakmayınız ! " + "')</script>");
        }

        else
        {
            Datacontrol();
        }
    }

    protected void btnadminlogin_Click(object sender, EventArgs e)
    {
        button_click();
    }
}