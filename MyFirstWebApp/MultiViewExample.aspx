<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiViewExample.aspx.cs" Inherits="MyFirstWebApp.MultiViewExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:ImageButton ID ="btnRegister" runat="server" ImageUrl="~Image/download.jpg" width ="40px"/>"
            <br />
            <asp:ImageButton ID ="btnDisplay" runat="server" ImageUrl="~Image/hlu.jpg" width ="14px"/>"
              <br />
            <asp:ImageButton ID ="btn" runat="server" ImageUrl="~Image/preg.jpg" width ="14px"/>"

            <asp:MultiView ID="MyPatient" runat="server" >

                <asp:View ID="Register" runat="server">
                <img src ="../Image/download.jpg" />
                    </asp:View>


             <asp:View ID="Display" runat="server">
                  <img src ="~Image/hlu.jpg" />
                </asp:View>
            <asp:View ID="Appointment" runat="server">
                  <img src ="~Image/preg.jpg" />
                </asp:View>
                  </asp:MultiView>

              <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">


              </asp:DropDownList>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [catagory]"></asp:SqlDataSource>


            </div>
    </form>
</body>
</html>
