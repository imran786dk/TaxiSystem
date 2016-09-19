<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaxiSystem.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"><style type="text/css">


        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 284px;
            height: 75px;
            margin-top: 100px;
            margin-left: 300px;
            display: inline-block;
            float: left;
        }
                                                                          }
                                                                          .auto-style13 {
                                                                              height: 459px;
                                                                          }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3 class="auto-style13">Få tilsendt en ny adgangskode til din email</h3>
    <div class="auto-style10">
        <table class="auto-style12">
            <tr>
                <td class="auto-style16">Login oplysniger:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox20" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button class="auto-style15" ID="Button2" runat="server" Text="Send" OnClick="Button2_Click" Width="90px" CssClass="auto-style18" Height="25px" />
    </div>
</asp:Content>
