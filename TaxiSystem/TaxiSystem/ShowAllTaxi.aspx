<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ShowAllTaxi.aspx.cs" Inherits="TaxiSystem.ShowAllTaxi1" %>
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
        <h3>Liste over dine taxier</h3>
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="224px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>

        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Bevilling" HeaderText="Bevilling" SortExpression="Bevilling" />
        <asp:BoundField DataField="Enheder" HeaderText="Enheder" SortExpression="Enheder" />
        <asp:BoundField DataField="Ture" HeaderText="Ture" SortExpression="Ture" />
        <asp:BoundField DataField="Km" HeaderText="Km" SortExpression="Km" />
        <asp:BoundField DataField="Besatte" HeaderText="Besatte" SortExpression="Besatte" />
        <asp:BoundField DataField="Kontrol" HeaderText="Kontrol" SortExpression="Kontrol" />
        <asp:BoundField DataField="Vogn_Km" HeaderText="Vogn_Km" SortExpression="Vogn_Km" />
        <asp:BoundField DataField="Reg" HeaderText="Reg" SortExpression="Reg" />
        <asp:BoundField DataField="Oprettet" HeaderText="Oprettet" SortExpression="Oprettet" />

    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="#000000" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="#ffffff" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Bevilling], [Enheder], [Ture], [Km], [Besatte], [Kontrol], [Vogn Km] AS Vogn_Km, [Reg], [Oprettet] FROM [vTaxi] WHERE ([Bruger Id] = @Bruger_Id)">
    <SelectParameters>
        <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiOwner" Type="Int32" />
    </SelectParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>

