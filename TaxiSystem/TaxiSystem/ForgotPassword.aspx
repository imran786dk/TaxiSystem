<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaxiSystem.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"><style type="text/css">
        .auto-style10 {
            width: 1528px;
            height: 1593px;
        }

        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 300px;
            margin-top: 300px;
            margin-left: 300px;
            display: inline-block;
            float: left;
        }

        .autostyle15 {
            width: 200px;
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
    <h3>Få tilsendt en ny adgangskode til din email</h3>
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
        </table>
        <asp:Button class="auto-style15" ID="Button2" runat="server" Text="Send adgangskode" OnClick="Button2_Click" Width="117px" />
    </div>
</asp:Content>
