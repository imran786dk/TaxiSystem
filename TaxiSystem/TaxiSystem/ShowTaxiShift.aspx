<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ShowTaxiShift.aspx.cs" Inherits="TaxiSystem.ShowTaxiShift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Taxivagt - Oversigt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Liste over taxivagter</h3>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Both">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Dato" DataFormatString="{0:yyyy-MM-dd}" HeaderText="Dato" SortExpression="Dato" />
                <asp:BoundField DataField="Bevilling" HeaderText="Bevilling" SortExpression="Bevilling" />
                <asp:BoundField DataField="Trafikbog" HeaderText="Trafikbog" SortExpression="Trafikbog" />
                <asp:BoundField DataField="column1" HeaderText="Trafikbog s." SortExpression="column1" />
                <asp:BoundField DataField="Enheder" HeaderText="Enheder" SortExpression="Enheder" />
                <asp:BoundField DataField="Ture" HeaderText="Ture" SortExpression="Ture" />
                <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                <asp:BoundField DataField="Besatte" HeaderText="Besatte" SortExpression="Besatte" />
                <asp:BoundField DataField="Kontrol" HeaderText="Kontrol" SortExpression="Kontrol" />
                <asp:BoundField DataField="column2" HeaderText="U. meter" SortExpression="column2" />
                <asp:BoundField DataField="Fejlture" HeaderText="Fejlture" SortExpression="Fejlture" />
                <asp:BoundField DataField="A_conto" HeaderText="A conto" SortExpression="A_conto" />
                <asp:BoundField DataField="Taxi_km" HeaderText="Taxi km" SortExpression="Taxi_km" />
                <asp:BoundField DataField="Fører" HeaderText="Fører" SortExpression="Fører" />
                <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                <asp:BoundField DataField="Efternavn" HeaderText="Efternavn" SortExpression="Efternavn" />
                <asp:BoundField DataField="Oprettet" DataFormatString="{0:yyyy-MM-dd}" HeaderText="Oprettet" SortExpression="Oprettet" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Trafikbog], [Trafikbog s.] AS column1, [Dato], [Enheder], [Ture], [Km], [Besatte], [Kontrol], [U. meter] AS column2, [Fejlture], [A conto] AS A_conto, [Oprettet], [Status], [Fornavn], [Efternavn], [Fører], [Bevilling], [Taxi km] AS Taxi_km FROM [vShift] WHERE ([Bevilling] = @Bevilling)">
            <SelectParameters>
                <asp:CookieParameter CookieName="TaxiPermission" Name="Bevilling" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
