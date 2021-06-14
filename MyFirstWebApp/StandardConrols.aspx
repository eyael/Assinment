<asp:DropDownList runat="server"></asp:DropDownList><%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StandardConrols.aspx.cs" Inherits="MyFirstWebApp.StandardConrols" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlSample" runat="server">
            <asp:ListItem>Get Groceries</asp:ListItem>
            <asp:ListItem>Get Milk</asp:ListItem>
            <asp:ListItem>Medicine</asp:ListItem>
                </asp:DropDownList>
            
            <asp:Calendar ID="Date" runat="server"></asp:Calendar>


            <asp:CheckBoxList ID="CheckBoxList1" runat="server">

            <asp:ListItem>Dot NEt</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>

            </asp:CheckBoxList>

            <asp:RadioButtonList ID="radio" runat="server">
               
             <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>

             </asp:RadioButtonList>


        </div>
    </form>
</body>
</html>
