<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.Master" AutoEventWireup="true" CodeBehind="CreateOwner.aspx.cs" Inherits="TaxiSystem.CreateOwner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Opret vognmand
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateOwner.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    
    <div class="container">

        <div class="page-header">
            <h3>Opret vognmand (Alle felter med * skal udfyldes)</h3>
        </div>

        <table class="auto-style12">
            <tr>
                <td class="auto-style26">&nbsp; CVR:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox20" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox20" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Firma:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Fornavn:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox21" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox21" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Efternavn:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox22" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox22" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Vej:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox23" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox23" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Post nr.:</td>
                <td class="auto-style24">
                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ZipCode" DataValueField="ZipCode" AppendDataBoundItems="True" Width="150px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0">Vælg postnr.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [ZipCode] FROM [tblZipCode]"></asp:SqlDataSource>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList2" InitialValue="0" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; By:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Land:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox30" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Tlf:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox27" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox27" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp; Email:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox29" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style25">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Skal udfyldes" ControlTovalidate="TextBox29" ForeColor="Red">
                                          </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ugyldig email" ForeColor="Red" Controltovalidate="TextBox29" 
                        Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            </table>

        
        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" style="width: 68px; height: 36px; float: left; position: absolute; left: 477px; top: 635px"/>
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Gem" style="width: 68px; height: 36px; float: left; position: absolute; left: 580px; top: 635px"/>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style22" style="width: 150px; height: 15px; float: left; position: absolute; left: 680px; top: 646px"></asp:Label>
    </div>
</asp:Content>
