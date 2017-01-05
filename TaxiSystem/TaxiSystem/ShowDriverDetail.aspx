<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiDriver.Master" AutoEventWireup="true" CodeBehind="ShowDriverDetail.aspx.cs" Inherits="TaxiSystem.ShowDriverDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Oplysninger
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Dine oplysninger</h3>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="Post" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CPR" HeaderText="CPR" SortExpression="CPR" />
                <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                <asp:BoundField DataField="Efternavn" HeaderText="Efternavn" SortExpression="Efternavn" />
                <asp:BoundField DataField="Vej" HeaderText="Vej" SortExpression="Vej" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" ReadOnly="True" />
                <asp:BoundField DataField="By" HeaderText="By" SortExpression="By" />
                <asp:BoundField DataField="Land" HeaderText="Land" SortExpression="Land" />
                <asp:BoundField DataField="Tlf" HeaderText="Tlf" SortExpression="Tlf" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Kørekort" HeaderText="Kørekort" SortExpression="Kørekort" />
                <asp:BoundField DataField="Førerkort" HeaderText="Førerkort" SortExpression="Førerkort" />
                <asp:BoundField DataField="Førerkort_udløb" HeaderText="Udløb" SortExpression="Førerkort_udløb" />
                <asp:BoundField DataField="Oprettet" HeaderText="Oprettet" SortExpression="Oprettet" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [CPR], [Fornavn], [Efternavn], [Vej], [Post], [By], [Land], [Tlf], [Email], [Kørekort], [Førerkort], [Førerkort udløb] AS Førerkort_udløb, [Oprettet] FROM [vTaxiDriver] WHERE ([Bruger Id] = @Bruger_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiDriver" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
