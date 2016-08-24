<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterTaxi.aspx.cs" Inherits="TaxiSystem.TaxiRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Opret Taxi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Reg.nr.:<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Bevillingsnr.:<br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Internt nr.:<br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Status:<br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
        </div>
    </form>
</body>
</html>
