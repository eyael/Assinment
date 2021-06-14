<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridviewPatient.aspx.cs" Inherits="MyFirstWebApp.GridviewPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="gvPatients" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvPatients_RowDeleting" OnRowUpdating="gvPatients_RowUpdating" OnRowEditing = "gvPatients_RowEditing">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <EditItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="firstName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("firstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("firstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="LastName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLname" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <EditItemTemplate>
                            <asp:ImageButton ID="btnUpdate" runat="server" CommandName="Update" Height="60px" ImageUrl="~/Image/update.jpg" />
                            <asp:ImageButton ID="btnCancel" runat="server" CommandName="Cancel" Height="59px" ImageUrl="~/Image/Cancel.jpg" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="btnEdit" runat="server" CommandName="Edit" Height="80px" ImageUrl="~/Image/edit.jpg" OnClick="btnEdit_Click" Width="65px" />
                            <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" Height="83px" ImageUrl="~/Image/delete.jpg" style="margin-left: 25px" Width="52px" />
                        </ItemTemplate>
                        <HeaderStyle BackColor="#FF9900" ForeColor="#FFFF99" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
