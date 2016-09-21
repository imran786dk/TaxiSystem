<%@ Page Title="Log ind" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaxiSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <link href="Styles/Login.css" rel="stylesheet" />
       <style type="text/css">
           .auto-style21 {
               width: 100px;
               text-align: left;
               height: 27px;
           }
           .auto-style23 {
               width: 100px;
               height: 27px;
           }
           .auto-style24 {
               width: 171px;
               text-align: left;
               height: 27px;
           }
           .auto-style27 {
               width: 44px;
               height: 15px;
               position: absolute;
               left: 829px;
               top: 374px;
           }
       .auto-style28 {
        height: 25px;
        position: absolute;
        left: 708px;
        top: 370px;
        width: 90px;
    }
           .auto-style29 {
               width: 100px;
               height: 31px;
           }
           .auto-style30 {
               width: 171px;
               text-align: left;
               height: 31px;
           }
       </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3>Log på med din email og din personlig adgangskode</h3>
    <div class="auto-style10">
        <table class="auto-style17">
            <tr>
                <td class="auto-style21">Login oplysniger:
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Email:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Adgangskode:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td class="auto-style29"></td>
                 <td class="auto-style30">   
                     <a href="ForgotPassword.aspx">Glemt adgangskode?</a>                
                     
                </td>

                
             </tr>
        </table>
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Log på" OnClick="Button2_Click" CssClass="auto-style28" />
        <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style27"></asp:Label>
    </div>
</asp:Content>
