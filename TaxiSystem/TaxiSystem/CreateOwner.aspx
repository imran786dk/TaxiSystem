<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateOwner.aspx.cs" Inherits="TaxiSystem.CreateOwner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 500px;
        }

        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 351px;
            position: absolute;
            left: 300px;
            top: 100px;
        }

        .autostyle15 {
            width: 150px;
        }

        .auto-style14 {
            width: 90px;
        }

        .auto-style15 {
            width: 180px;
            text-align: left;
        }

        .auto-style16 {
            width: 90px;
            text-align: left;
        }

        .auto-style20 {
            left: 338px;
            top: 530px;
            width: 75px;
            height: 25px;
            position: absolute;
        }

        .auto-style21 {
            height: 25px;
            position: absolute;
            left: 665px;
            top: 530px;
            width: 75px;
            }
        .auto-style22 {
            width: 31px;
            height: 15px;
            position: absolute;
            left: 805px;
            top: 535px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3>Indtast vognmand oplyninger (Alle felter markeret med * skal udfyldes)</h3>
    <div class="auto-style10">
        <table class="auto-style12">

            <tr>
                <td class="auto-style16">Personlige oplysninger:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">CVR:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Firma:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Fornavn:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Efternavn:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox22" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Vej:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Post nr.:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">By:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Land:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox25" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Tlf:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox27" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox29" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>*</td>
            </tr>
            </table>
        <asp:Button class="auto-style13" ID="Button1" runat="server" Text="Ryd felter" OnClick="Button1_Click" CssClass="auto-style20" />
        <br />
        <br />
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Gem" OnClick="Button2_Click" CssClass="auto-style21" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Text=""></asp:Label>
    </div>


</asp:Content>
