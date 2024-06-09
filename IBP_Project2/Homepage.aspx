<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="tr">
<head runat="server">
    
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>  
  
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9hb/g1LgtMJ0kZHYUiQm+K9FYOJtEZxJbGkU5" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
   
    <title> IBP PROJECT</title>
    
</head>
<body>
    <form id="form1" runat="server">
       
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
        <a class="navbar-brand" href="#">
           Hastane Otomasyon Sistemi
                       </a>
      </li>
         <li class="nav-item" >
              
     </li>                             
    </ul>                            
  
  </div>
    </div>           
</nav>
        <div class="container" style="margin-top:50px;">
            <div class="swiper mySwiper" style="width:700px;height:400px;">
                <div class="swiper-wrapper" >
                    <div class="swiper-slide" >
                        <img src="img/Hastaneresim1.jpg" alt="Slider Image 1"/>
            </div>
            <div class="swiper-slide">
                <img src="img/Hastaneresim3.jpg" alt="Slider Image 2"/>
            </div>
          
            <div class="swiper-slide" >
                <img src="img/Hastaneresim2.jpg" alt="Slider Image 3"/>
            </div>
            
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>

</div>
         
 
    <div style="margin-left:40%;margin-top:10px;">
            
        <asp:Button ID="btnuser" CssClass="btn btn-danger" runat="server"  style="margin-right:10px;" Text="Kullanıcı Girişi" OnClick="btnuser_Click"></asp:Button>
        <asp:Button ID="btnadmin" CssClass="btn btn-danger" runat="server"  Text="Admin Girişi" OnClick="btnadmin_Click"></asp:Button>
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
</script>


</body>
</html>
