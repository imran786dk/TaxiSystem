<%@ Page Title="Glemt adgangskode" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaxiSystem.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <link href="Styles/ForgotPassword.css" rel="stylesheet" />
       <style type="text/css">
           .auto-style17 {
               border-style: solid;
               border-width: 3px;
               padding: 1px 4px;
               width: 400px;
               margin-top: 100px;
               margin-left: 300px;
               display: inline-block;
               float: left;
               height: 50px;
               position: absolute;
               left: 100px;
               top: 100px;
           }
           .auto-style18 {
               width: 75px;
               position: absolute;
               left: 708px;
               top: 267px;
           }
           .auto-style19 {
               height: 27px;
               width: 106px;
           }
           .auto-style20 {
               height: 27px;
               width: 200px;
           }
           .auto-style21 {
               position: absolute;
               top: 270px;
               left: 827px;
               z-index: 1;
               width: 150px;
           }
           </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3 class="auto-style13">Få tilsendt en ny adgangskode til din email</h3>
    <div class="auto-style10">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">Email:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ForeColor="Red" ControlToValidate="TextBox20"></asp:RequiredFieldValidator>
                </td>
            </tr>
                      
        </table>
        <asp:Button class="auto-style15" ID="Button2" runat="server" Text="Send" OnClick="Button2_Click" Width="90px" CssClass="auto-style18" Height="25px" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text=""></asp:Label>
    </div>
</asp:Content>
