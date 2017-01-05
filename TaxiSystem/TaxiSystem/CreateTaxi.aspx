<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="CreateTaxi.aspx.cs" Inherits="TaxiSystem.CreateTaxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Opret taxi
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateTaxi.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Opret taxi (Alle felter med * skal udfyldes)</h3>
        </div>

        <table class="auto-style12">
            <tr>
                <td class="auto-style15">&nbsp; Reg. :</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox20" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox20" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Bevilling:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox9" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox9" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Enheder:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox21" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox21" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Ture:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox22" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox22" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Km:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox23" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox23" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Besatte km.:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox24" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox24" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Kontrol km:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox1" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp; Taxi km:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox25" runat="server" Width="100px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox25" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" Style="width: 68px; height: 36px; position: absolute; left: 478px; top: 575px" />
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Gem" Style="width: 68px; height: 36px; position: absolute; left: 581px; top: 575px" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Style="width: 150px; height: 15px; position: absolute; left: 690px; top: 589px"></asp:Label>

    </div>

</asp:Content>
