<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminmessages.aspx.cs" Inherits="Adminmessages" %>

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
              <asp:LinkButton ID="btnback" runat="server" Text=" Ana Sayfa" Font-Underline="false" CssClass="nav-link" OnClick="btnback_click"></asp:LinkButton>
     </li>
        
    </ul>
  
  </div>
    </div>

</nav>


               <div style="margin-top:50px;" class="container-fluid">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"  DataKeyNames="MessageID"  Width="700px"  CssClass="table table-bordered " >
                <Columns>
        <asp:TemplateField HeaderText="Gönderilme Tarihi">
            <ItemTemplate>
                <asp:Label ID="lbldate" Text='<%#  Eval("Date") %>' runat="server"> </asp:Label>
            </ItemTemplate>


        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gönderen Kişi">
                        <ItemTemplate>
                            <asp:Label Text='<%#  Eval("Username") %>' runat="server"> </asp:Label>
                            <asp:Label Text='<%#  Eval("Usersurname") %>' runat="server"> </asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
        <asp:TemplateField HeaderText="Mesaj İçeriği">
            <ItemTemplate>
                <asp:Label Text='<%#  Eval("Text") %>' runat="server"> </asp:Label>

            </ItemTemplate>

        </asp:TemplateField>
    
    
        <asp:TemplateField HeaderText="Okundu/Okunmadı">
            <ItemTemplate>

                <asp:CheckBox ID="chkboxread" Checked='<%# Convert.ToBoolean(Eval("[Read]")) %>' runat="server" Enabled="True" />
            </ItemTemplate>

        </asp:TemplateField>
                        
        
    
</Columns>

            </asp:GridView>
                   <div style="margin-left:60px;">
                     <asp:Label ID="lblMessage" runat="server" ></asp:Label>
                    </div>
        </div>
    </form>
</body>
</html>
