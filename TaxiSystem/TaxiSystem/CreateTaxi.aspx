<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="CreateTaxi.aspx.cs" Inherits="TaxiSystem.CreateTaxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 500px;
        }

        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            position: absolute;
            left: 300px;
            top: 100px;
            height: 300px;
        }

      
    .auto-style14 {
        width: 100px;
        height: 27px;
    }
    .auto-style16 {
        height: 27px;
    }

      
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3>Opret taxi (Alle felter markeret med * skal udfyldes)</h3>
    <div class="auto-style10">
        <table class="auto-style12">

            <tr>
                <td class="auto-style14">Taxi oplysninger:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Reg. :</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox20" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Bevilling:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox9" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Enheder:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox21" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Ture:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox22" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox22" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Km:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox23" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Besatte km.:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox24" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Kontrol km:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox1" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Taxi km:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox25" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14">*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox25" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" style="width: 68px; height: 36px; position: absolute; left: 342px; top: 465px"/>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style22" style="width: 150px; height: 15px; position: absolute; left: 759px; top: 482px"></asp:Label>
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Gem" style="width: 68px; height: 36px; position: absolute; left: 668px; top: 465px"/>
    </div>


</asp:Content>
