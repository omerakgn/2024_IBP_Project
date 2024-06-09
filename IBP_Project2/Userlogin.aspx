<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9hb/g1LgtMJ0kZHYUiQm+K9FYOJtEZxJbGkU5" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        
        <div class="collapse navbar-collapse" id="navbarText">
            
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="navbar-brand" href="#">
           <img src="img/icon.png" width="40" height="40" class="d-inline-block " alt="" />
            
            </a>
        
         
      </li>
         <li class="nav-item" >
              <asp:LinkButton ID="btnhome" runat="server" Text=" Ana Sayfa" Font-Underline="false" CssClass="nav-link" OnClick="btnhome_Click"></asp:LinkButton>
     </li>
        
    </ul>
  
  </div>
    </div>

</nav>

        <div class="container" style="margin-top:100px;width:550px;">
            

        <div class="form-group">
    <label for="username">Mail Adresiniz</label>
  
    <asp:TextBox ID="txtusermail" runat="server" TextMode="Email" CssClass="form-control"  placeholder="örn: omerfarukakgun22@gmail.com" AutoCompleteType="Disabled"></asp:TextBox>

  </div>
  <div class="form-group">
    <label for="userpassword">Şifre</label>
    
    <asp:TextBox ID="txtuserpassword" runat="server" TextMode="Password" CssClass="form-control"  placeholder="Şifre"  ></asp:TextBox>
  </div>
  
  
  <asp:Button ID="btnuserlogin" CssClass="btn btn-dark" runat="server" Text="Giriş Yap" style="margin-top:20px;" OnClick="btnuserlogin_Click"></asp:Button>

            </div>
    </form>
</body>
</html>
