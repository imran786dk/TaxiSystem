<%@ Page Title="Glemt adgangskode" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaxiSystem.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <link href="Styles/ForgotPassword.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3 class="auto-style13">Få tilsendt en ny adgangskode til din email</h3>
    <div class="auto-style10">
        <table class="auto-style12">
            <tr>
                <td class="auto-style15">Bruger oplysniger:
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Email:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button class="auto-style15" ID="Button2" runat="server" Text="Send" OnClick="Button2_Click" Width="90px" CssClass="auto-style18" Height="25px" style="width: 75px; position: absolute; left: 725px; top: 310px" />
    </div>
</asp:Content>
