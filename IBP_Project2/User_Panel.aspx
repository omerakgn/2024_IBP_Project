﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Panel.aspx.cs" Inherits="User_Panel" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kullanıcı Paneli</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9hb/g1LgtMJ0kZHYUiQm+K9FYOJtEZxJbGkU5" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        .ml-auto {
            margin-left: auto !important;
           
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
</head>
<body>
    <form runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarText">
                <a class="navbar-brand" href="#">
                    <asp:Label id="lbluser" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                    <asp:Label id="lblsurname" runat="server" Text='<%# Eval("Usersurname") %>'></asp:Label>
    
                 </a>

                <ul class="navbar-nav ml-auto">
                   
        
                      
             <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Menü
                    </a>
                    <div class="dropdown-menu dropdown-menu-left" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#" onclick="Messages()">Mesajlarım</a>
                        <a class="dropdown-item" href="#" onclick="Update()">Şifre Güncelle</a>                                         
                    </div>
                </li>     
                     <li class="nav-item active">
        
     <asp:Button ID="exitbtn" runat="server" aria-expanded="false" CssClass="btn btn-danger" Text="Çıkış Yap" OnClick="exitbtn_Click"/>
        
    </li>         
                   
    </ul>                           
  </div>
          </div>                  
</nav>

    <div class="container" style="margin-top:50px;">
        <div class="swiper mySwiper" style="width:900px;height:450px;">
            <div class="swiper-wrapper" >
                <div class="swiper-slide" >
                    <img src="img/Userslider-4.png" alt="Slider Image 1">
                </div>
                <div class="swiper-slide">
                    <img src="img/Userslider-2.jpeg" alt="Slider Image 2">
                </div>
              
                <div class="swiper-slide" >
                    <img src="img/Userslider-3.jpeg" alt="Slider Image 3">
                </div>
                
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>

       <div class="container mt-5">
           <div class='card'>                                                                                         
                <div class='card-body'>
                    <h5 class='card-title'>DUYURULAR</h5>
                    
            </div>
            </div>
            <asp:Repeater ID="rptAnnouncements" runat="server">
                    <ItemTemplate>
                      
                            <div class='card'>                                                                                         
                                <div class='card-body'>
                                    <h5 class='card-title'><%# Eval("Title") %></h5>
                                    <p class='card-text'><%# Eval("Announcement") %></p>
                                </div>
                            </div>
                       
                    </ItemTemplate>
                </asp:Repeater>
        </div>
      

         <asp:Button ID="btngonder" runat="server" Text="Admine mesaj gönder" style="margin-left:470px;margin-bottom:10px; margin-top:10px;" CssClass="btn btn-danger" OnClick="btngonder_Click" />
        
           
       
    </div>
    
        </form>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper('.mySwiper', {
            loop: true,
            autoplay: {
                delay: 2000,
                disableOnInteraction: false,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        function showSection(sectionId) {
            var sections = document.querySelectorAll('.section');
            sections.forEach(section => {
                section.style.display = 'none';
            });
            document.getElementById(sectionId).style.display = 'block';
        }
        function logout() {
            
            window.location.href = 'Homepage.aspx';
        }
        function Update() {

            window.location.href = 'Password_update.aspx';
        }
        function Messages() {

            window.location.href = 'Mymessage.aspx';
        }

    </script>
</body>
</html>
