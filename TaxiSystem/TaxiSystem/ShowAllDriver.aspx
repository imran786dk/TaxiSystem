<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ShowAllDriver.aspx.cs" Inherits="TaxiSystem.ShowAllTaxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Chauffør - Oversigt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Liste over chauffører</h3>
        </div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" SelectText="Vis/Rediger"/>
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
                <asp:BoundField DataField="Oprettet" HeaderText="Oprettet" SortExpression="Oprettet" />
                <asp:BoundField DataField="Bruger Id" HeaderText="Bruger Id" SortExpression="Bruger Id" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT * FROM [vTaxiDriver]"></asp:SqlDataSource>

    </div>

</asp:Content>
