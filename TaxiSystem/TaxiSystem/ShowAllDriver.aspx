<%@ Page Title="" Language="C#" MasterPageFile="~/MenuMasterPage.Master" AutoEventWireup="true" CodeBehind="ShowAllDriver.aspx.cs" Inherits="TaxiSystem.ShowAllTaxi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 624px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">
    <div class="auto-style1">
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="Black" Height="224px">
    <AlternatingRowStyle BackColor="White" ForeColor="#000000" />
    <Columns>
        <asp:BoundField DataField="CPR" HeaderText="CPR" SortExpression="CPR" />
        <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
        <asp:BoundField DataField="Efternavn" HeaderText="Efternavn" SortExpression="Efternavn" />
        <asp:BoundField DataField="Vej" HeaderText="Vej" SortExpression="Vej" />
        <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
        <asp:BoundField DataField="By" HeaderText="By" SortExpression="By" />
        <asp:BoundField DataField="Land" HeaderText="Land" SortExpression="Land" />
        <asp:BoundField DataField="Tlf" HeaderText="Tlf" SortExpression="Tlf" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Kørekort" HeaderText="Kørekort" SortExpression="Kørekort" />
        <asp:BoundField DataField="Førerkort" HeaderText="Førerkort" SortExpression="Førerkort" />
        <asp:BoundField DataField="Førerkort udløb" HeaderText="Førerkort udløb" SortExpression="Førerkort udløb" />
        <asp:BoundField DataField="Fradrag" HeaderText="Fradrag" SortExpression="Fradrag" />
        <asp:BoundField DataField="Træk %" HeaderText="Træk %" SortExpression="Træk %" />
        <asp:BoundField DataField="Pension %" HeaderText="Pension %" SortExpression="Pension %" />
        <asp:BoundField DataField="Konto" HeaderText="Konto" SortExpression="Konto" />
        <asp:BoundField DataField="Oprettet" HeaderText="Oprettet" SortExpression="Oprettet" />
    </Columns>
        <EditRowStyle BackColor="#4775D1" />
    <FooterStyle BackColor="#24478F" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#24478F" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#24478F" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#c1d1f0" ForeColor="#000000" />
    <SelectedRowStyle BackColor="#4775D1" Font-Bold="True" ForeColor="#ffffff" />
    <SortedAscendingCellStyle BackColor="#cccccc" />
    <SortedAscendingHeaderStyle BackColor="#2c2921" />
    <SortedDescendingCellStyle BackColor="#cccccc" />
    <SortedDescendingHeaderStyle BackColor="#2c2921" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT * FROM [vTaxiDriver] ORDER BY [Fornavn]"></asp:SqlDataSource>
</div>
</asp:Content>
