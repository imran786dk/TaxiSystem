<%@ Page Title="Log ind" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaxiSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <link href="Styles/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3>Log på med din email og din personlige adgangskode</h3>
    <div class="auto-style10">
        <table class="auto-style17">
            <tr>
                <td class="auto-style18">Login oplysniger:
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Email:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Adgangskode:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td class="auto-style19"><a href="ForgotPassword.aspx">Glemt adgangskode?</a></td>
                 <td class="auto-style15">                   
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>

                
             </tr>
        </table>
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Log på" OnClick="Button2_Click" CssClass="auto-style20" />
    </div>
</asp:Content>
