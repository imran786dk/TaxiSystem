<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterDriver.aspx.cs" Inherits="TaxiSystem.RegisterDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Opret chauffør</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 5px solid #000000;
        }
        .auto-style2 {
            width: 78px;
        }
        .auto-style3 {
            width: 894px;
        }
        #form1 {
            height: 876px;
        }
    </style>
</head>
<body style="height: 907px">
    <form id="form1" runat="server">
    <div style="width: 323px; height: 293px">
        Personlige oplysninger:
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">CPR:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fornavn:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Efternavn:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox22" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Adresse:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Post nr.:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">By:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox25" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Land:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="206px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tlf 1:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox27" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Tlf 2:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox28" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox29" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <div style="height: 274px; width: 626px">
        </div>
        <br />
        Kørekortnr.:<br />
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        <br />
        Internt nr.:<br />
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        <br />
        Førerkort nr.:<br />
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        <br />
        Førerkort udløb (ddmmyy):
        <br />
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />
        <br />
        Skatteprocent:<br />
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <br />
        <br />
        Skattefradrag:<br />
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <br />
        <br />
        Reg.nr.:<br />
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
        Kontonr.:<br />
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />
        <br />
        Status:<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
