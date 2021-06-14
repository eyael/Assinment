<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="MyFirstWebApp.PatientRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
  
</head>
     <h2>Patient Registration Form</h2>

<body>
  
    <form id="form1" runat="server">
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
       
        <div class="row">
         <div class="col-md-3">
      

            <label for="Fname" class="form-label">Enter First Name </label>
            <br />
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            <br />


             <label for="Lname" class="form-label">Enter Last Name </label>
            <br />
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
            <br />

             <%--<asp:DropDownList ID="date" runat="server">
              
                 <asp:ListItem Selected ="True">Select</asp:ListItem>
                 <asp:ListItem>Monday</asp:ListItem>
                 <asp:ListItem>Wednesday </asp:ListItem>
                 <asp:ListItem>Friday</asp:ListItem>

             </asp:DropDownList>--%>

             </div>
             <div class="col-md-3">
        <label for="Lssn" class="form-label">Enter Last Four digit of SSN </label>
            <br />
            <asp:TextBox ID="txtSsn" runat="server"></asp:TextBox>
            <br />

        <label for="add" class="form-label">Enter Your Address </label>
            <br />
            <asp:TextBox ID="txtAdress" runat="server"></asp:TextBox>
            <br />


        <label for="ZipC" class="form-label">Enter your Zip code </label>
            <br />
            <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
            <br />
                 </div>

                  <div class="col-md-3">

        <label for="AptNUm" class="form-label">Enter your Apt Number</label>
            <br />
            <asp:TextBox ID="txtApt" runat="server"></asp:TextBox>
            <br />

        <label for="Phone" class="form-label">Enter your Phone Number </label>
            <br />
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            <br />

                     <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                          <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>

                      --%>


        <asp:Button ID="btn" runat="server" Text="Submit" BackColor ="Green" OnClick="btn_Click1" />
            </div>
            </div>

          <div class ="row">
              <h2>List of Patient</h2>
                          <div class ="col-md-10 col-lg-offset-1">
                          <asp:GridView ID="gvpatients" runat="server"></asp:GridView>
                          </div>
                      </div>

        <div class ="row">
              <h2>Delete of Patient</h2>
                          <div class ="col-md-10 col-lg-offset-1">
                              <asp:DropDownList ID="ddlPatient" runat="server" DataSourceID="SqlDataSource1" DataTextField="firstName" DataValueField="id" ></asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [patients]"></asp:SqlDataSource>
                              <asp:Button ID="btnDelete" runat="server" Text="Button" OnClick="btnDelete_Click" />
                          </div>
                      </div>

          <div class ="row">
              <h2>List of Patient</h2>
              <%--<asp:Button ID="btnSubmitUpdate" runat="update" Text="Button"  />--%>

              </div>
    </form>

</body>
</html>

