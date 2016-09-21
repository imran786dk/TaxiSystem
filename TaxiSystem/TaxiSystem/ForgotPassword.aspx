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
               height: 42px;
               position: absolute;
               left: 100px;
               top: 100px;
           }
           .auto-style18 {
               height: 44px;
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
           </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3 class="auto-style13">Få tilsendt en ny adgangskode til din email</h3>
    <div class="auto-style10">
        <table class="auto-style17">
            <tr>
                <td class="auto-style19">Email:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
                      
        </table>
        <asp:Button class="auto-style15" ID="Button2" runat="server" Text="Send" OnClick="Button2_Click" Width="90px" CssClass="auto-style18" Height="25px" />
    </div>
</asp:Content>
