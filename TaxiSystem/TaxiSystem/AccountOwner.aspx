<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AccountOwner.aspx.cs" Inherits="TaxiSystem.AccountOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="16px">
        <Items>
            <asp:MenuItem Text="Mine oplysninger" Value="Mine oplysninger">
                <asp:MenuItem Text="Se oplysninger" Value="Se oplysninger"></asp:MenuItem>
                <asp:MenuItem Text="Ret oplysninger" Value="Ret oplysninger"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Taxier" Value="Taxier">
                <asp:MenuItem Text="Se taxier" Value="Se taxier"></asp:MenuItem>
                <asp:MenuItem Text="Opret taxi" Value="Opret taxi"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Vagt" Value="Vagt">
                <asp:MenuItem Text="Se vagter" Value="Se vagter"></asp:MenuItem>
                <asp:MenuItem Text="Opret vagt" Value="Opret vagt"></asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Text="Chauffører" Value="Chauffører">
                <asp:MenuItem Text="Mine chauffører" Value="Mine chauffører"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CreateDriver.aspx" Text="Opret chauffør" Value="Opret chauffør"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
