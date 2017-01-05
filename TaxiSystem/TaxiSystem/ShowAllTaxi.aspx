<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ShowAllTaxi.aspx.cs" Inherits="TaxiSystem.ShowAllTaxi1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Taxi - Oversigt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Liste over taxier</h3>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>

                <asp:BoundField DataField="Bevilling" HeaderText="Bevilling" SortExpression="Bevilling" />
                <asp:BoundField DataField="Enheder" HeaderText="Enheder" SortExpression="Enheder" />
                <asp:BoundField DataField="Ture" HeaderText="Ture" SortExpression="Ture" />
                <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
                <asp:BoundField DataField="Besatte" HeaderText="Besatte" SortExpression="Besatte" />
                <asp:BoundField DataField="Kontrol" HeaderText="Kontrol" SortExpression="Kontrol" />
                <asp:BoundField DataField="Vogn_Km" HeaderText="Vogn km" SortExpression="Vogn_Km" />
                <asp:BoundField DataField="Reg" HeaderText="Reg. nr." SortExpression="Reg" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Bevilling], [Enheder], [Ture], [Km], [Besatte], [Kontrol], [Vogn Km] AS Vogn_Km, [Reg], [Oprettet] FROM [vTaxi] WHERE ([Bruger Id] = @Bruger_Id)">
            <SelectParameters>
                <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiOwner" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>

