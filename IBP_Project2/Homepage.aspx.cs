﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnuser_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userlogin.aspx");
    }

    protected void btnadmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminlogin.aspx");
    }
}