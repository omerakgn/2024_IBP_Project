using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminmessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Datareader();
    }
    public void Datareader()
    {
        // string Adminmail = Session["adminmail"].ToString();

        string sqlQuery = @"SELECT M.MessageID , M.UserID , M.Text, M.Date , M.[Read] ,U.Username ,U.Usersurname
                        FROM Message AS M
                        INNER JOIN [User] AS U ON M.UserID = U.UserID";



        SqlCommand command = new SqlCommand(sqlQuery, SqlConnectionClass.connection);
        SqlConnectionClass.CheckConnection();





        SqlDataReader reader = command.ExecuteReader();


        if (reader.HasRows)
        {
            GridView3.DataSource = reader;
            GridView3.DataBind();
        }
        else
        {
            lblMessage.Text = " <b>HERHANGİ BİR MESAJ BULUNMAMAKTADIR. </b>";
        }
        

    }
    protected void btnback_click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Panel.aspx");
    }

    
}