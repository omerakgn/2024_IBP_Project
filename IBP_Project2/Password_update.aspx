<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password_update.aspx.cs" Inherits="Password_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9hb/g1LgtMJ0kZHYUiQm+K9FYOJtEZxJbGkU5" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
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
              <asp:LinkButton ID="btnback" runat="server" Text=" Ana Sayfa" Font-Underline="false" CssClass="nav-link" OnClick="btnback_Click"></asp:LinkButton>
     </li>
        
    </ul>
  
  </div>
    </div>

</nav>



        <div>
            <div class="container" style="margin-top:100px;width:550px;">
                
                <div class="form-group">
                     <label for="newpassword1">Mail</label>
                     <asp:TextBox ID="txtmail" runat="server" TextMode="Email" CssClass="form-control"  placeholder="Mail Adresiniz" AutoCompleteType="Disabled"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label for="newpassword1">Yeni Şifre</label>
                    <asp:TextBox ID="newpassword1" runat="server" TextMode="SingleLine" CssClass="form-control"  placeholder="Yeni Şifre" AutoCompleteType="Disabled"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="newpassword2">Yeni Şifre Tekrar</label>
                    <asp:TextBox ID="newpassword2" runat="server" TextMode="SingleLine" CssClass="form-control"  placeholder="Yeni Şifre Tekrar" AutoCompleteType="Disabled" ></asp:TextBox>

                </div>
                <asp:Button ID="btnpasswordupdate" CssClass="btn btn-danger" runat="server" Text="Güncelle" style="margin-top:20px;" OnClick="btnpasswordupdate_Click"></asp:Button>

            </div>

        </div>
    </form>
</body>
</html>
