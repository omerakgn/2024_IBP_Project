using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class SqlConnectionClass
{
    public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-PDOG0UH;Initial Catalog=2024_IBP_Project;Integrated Security=True;Encrypt=False;MultipleActiveResultSets=True");

    public static void CheckConnection()
    {
        if (connection.State == System.Data.ConnectionState.Closed)
        {
            connection.Open();
        }
    }
}