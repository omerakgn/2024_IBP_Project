<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mymessage.aspx.cs" Inherits="Mymessage" %>

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
        <div>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"  DataKeyNames="MessageID"  Width="700px"  CssClass="table table-bordered " >
                <Columns>
        <asp:TemplateField HeaderText="Gönderilme Tarihi">
            <ItemTemplate>
                <asp:Label ID="lbldate" Text='<%#  Eval("Date") %>' runat="server"> </asp:Label>
            </ItemTemplate>


        </asp:TemplateField>
                    
        <asp:TemplateField HeaderText="Mesaj İçeriği">
            <ItemTemplate>
                <asp:Label Text='<%#  Eval("Text") %>' runat="server"> </asp:Label>

            </ItemTemplate>

        </asp:TemplateField>
    
    
        <asp:TemplateField HeaderText="Okundu/Okunmadı">
            <ItemTemplate>

                <asp:CheckBox ID="readbox" Checked='<%# Convert.ToBoolean(Eval("[Read]")) %>' runat="server" Enabled="false" />
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
