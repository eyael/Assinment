<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyCalculater.aspx.cs" Inherits="MyFirstWebApp.MyCalculater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h1>My Personal Calculater</h1>
    <br />
    <div  style="width:880px"/>
<table style=" width: 100%;">
    
   
    <tr>
        <td colspan=" 4">
            <asp:TextBox ID="TextDisplay" runat="server" Hight = "33px" Width ="270" ></asp:TextBox>
        </td>
    </tr>

    <tr>
         <td><asp:Button ID="ButtonAC" runat="server" Height="35px" Text="C" width =" 82px"/> </td>
         <td><asp:Button ID="btnPer" runat="server" Height="35px" Text="%" width =" 82px" /> </td>
         <td><asp:Button ID="btnMult" runat="server" Height="35px" Text="*" width =" 82px" OnClick="btnMult_Click"/> </td>
         <td><asp:Button ID="btnSlash" runat="server" Height="35px" Text="%" width =" 82px" /> </td>
        
    </tr>

    <tr>
         <td><asp:Button ID="Button7" runat="server" Height="35px" Text="7" width =" 82px" OnClick="Button7_Click"/> </td>
         <td><asp:Button ID="Button8" runat="server" Height="35px" Text="8" width =" 82px" /> </td>
         <td><asp:Button ID="Button9" runat="server" Height="35px" Text="9" width =" 82px"/> </td>
        <td><asp:Button ID="ButtonX" runat="server" Height="35px" Text="X" width =" 82px" /> </td>
    </tr>

    <tr>
         <td><asp:Button ID="Button4" runat="server" Height="35px" Text="4" width =" 82px"/> </td>
         <td><asp:Button ID="Button5" runat="server" Height="35px" Text="5" width =" 82px" /> </td>
         <td><asp:Button ID="Button6" runat="server" Height="35px" Text="6" width =" 82px"/> </td>
        <td><asp:Button ID="Buttonmin" runat="server" Height="35px" Text="-" width =" 82px" /> </td>
    </tr>
    <tr>
        <td><asp:Button ID="Button1" runat="server" Height="35px" Text="1" width =" 82px"/> </td>
         <td><asp:Button ID="Button2" runat="server" Height="35px" Text="2" width =" 82px"/> </td>
         <td><asp:Button ID="Button3" runat="server" Height="35px" Text="3" width =" 82px"/> </td>
        <td><asp:Button ID="Buttonplus" runat="server" Height="35px" Text="+" width =" 82px" /> </td>
    </tr>

    <tr>   
         <td><asp:Button ID="Button0" runat="server" Height="35px" Text="0" width =" 82px"/> </td>
         <td><asp:Button ID="Buttondot" runat="server" Height="35px" Text="." width =" 82px" /> </td>
        <td><asp:Button ID="btnEql" runat="server" Height="35px" Text="=" width =" 82px" BackColor="Gold" /> </td>
         
    </tr>
   
</table>

     

</asp:Content>


