<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaxiSystem.Login" %>

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
            width: 350px;
            margin-top: 100px;
            margin-left: 300px;
            display: inline-block;
            float: left;
        }

        .auto-style13 {
            position: relative;
            top: 200px;
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
    <h3>Log på med din email og din personlige adgangskode</h3>
    <div class="auto-style10">
        <table class="auto-style12">
            <tr>
                <td class="auto-style16">Login oplysniger:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox20" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Adgangskode:</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td class="auto-style14"><a href="ForgotPassword.aspx">Glemt adgangskode?</a></td>
                 <td class="auto-style15">                   
                     <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>

                
             </tr>
        </table>
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Log på" OnClick="Button2_Click" />
    </div>
</asp:Content>
