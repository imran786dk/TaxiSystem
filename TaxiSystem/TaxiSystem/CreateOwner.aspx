<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateOwner.aspx.cs" Inherits="TaxiSystem.CreateOwner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 1528px;
            height: 1593px;
        }

        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 300px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
        }

        .auto-style13 {
            position: relative;
            top: 300px;
            left: 40px;
            width: 75px;
        }
        .autostyle15 {
            width: 150px;
        }
        .auto-style14 {
            width: 90px;
        }
        .auto-style15 {
            width: 171px;
            text-align: left;
        }
        .auto-style16 {
            width: 90px;
            text-align: left;
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
                    <asp:TextBox ID="TextBox20" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Firma:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Fornavn:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox21" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Efternavn:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox22" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Vej:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox23" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Post nr.:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox24" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">By:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Land:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox25" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tlf 1:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox27" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Tlf 2:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox28" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox29" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            </table>
        <asp:Button class="auto-style13" ID="Button1" runat="server" Text="Ryd felter" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Gem" OnClick="Button2_Click" />
        </div>      
        

</asp:Content>
