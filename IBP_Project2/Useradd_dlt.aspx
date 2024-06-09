<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Useradd_dlt.aspx.cs" Inherits="Useradd_dlt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9hb/g1LgtMJ0kZHYUiQm+K9FYOJtEZxJbGkU5" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
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
              <asp:LinkButton ID="btnhome" runat="server" Text=" Ana Sayfa" Font-Underline="false" CssClass="nav-link" OnClick="btnhome_Click"></asp:LinkButton>
     </li>
        
    </ul>
  
  </div>
    </div>

</nav>

        <div class="form-control" style="margin-top:60px;">
          
                 <div class="form-row">
                    <div class="col-md-4 mb-3">
                      <label for="validationCustom01">İsim</label>
                        <asp:TextBox CssClass="form-control"  ID="txtusername" runat="server" placeholder="First name"  AutoCompleteType="Disabled" ></asp:TextBox>
                    
                      <div class="valid-feedback">
                        Başarılı !
                      </div>
                    </div>
                    <div class="col-md-4 mb-3">
                      <label for="validationCustom02">Soyisim</label>
                         <asp:TextBox CssClass="form-control"  ID="txtusersurname" runat="server" placeholder="Surname"  AutoCompleteType="Disabled" ></asp:TextBox>
                     
                      <div class="valid-feedback">
                        Başarılı !
                      </div>
                    </div>
                    <div class="col-md-4 mb-3">
                      <label for="validationCustomUsername">Mail Adresi</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text" id="inputGroupPrepend">@</span>
                        </div>
                           <asp:TextBox CssClass="form-control"  ID="txtusermail" runat="server" TextMode="Email" placeholder="Mail"  AutoCompleteType="Disabled" aria-describedby="inputGroupPrepend" ></asp:TextBox>
                      
                        <div class="invalid-feedback">
                         Lütfen mail adresi giriniz.
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationCustom03">Şifre</label>
                       <asp:TextBox CssClass="form-control"  ID="txtuserpassword" runat="server"  placeholder="Şifre"  AutoCompleteType="Disabled" aria-describedby="inputGroupPrepend" ></asp:TextBox>
                      
                      <div class="invalid-feedback">
                        Lütfen şifre belirleyiniz ! 
                      </div>
                    </div>
                    
                    
                 
                  
                  <asp:Button ID="btnadd" runat="server" CssClass="btn btn-danger" Text="Kaydet" OnClick="btnadd_Click"/>
                  <asp:Button ID="btndelete" runat="server" CssClass="btn btn-danger" Text="Sil" OnClick="btndelete_Click"/>

                  
                

                </div>
    </form>
</body>
</html>
