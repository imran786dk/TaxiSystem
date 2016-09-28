<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiDriver.Master" AutoEventWireup="true" CodeBehind="ShowDriverDetail.aspx.cs" Inherits="TaxiSystem.ShowDriverDetail" %>
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
        <h3>Dine oplysninger</h3>
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="224px" DataKeyNames="Post" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
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
        <asp:BoundField DataField="Førerkort_udløb" HeaderText="Førerkort_udløb" SortExpression="Førerkort_udløb" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [CPR], [Fornavn], [Efternavn], [Vej], [Post], [By], [Land], [Tlf], [Email], [Kørekort], [Førerkort], [Førerkort udløb] AS Førerkort_udløb, [Oprettet] FROM [vTaxiDriver] WHERE ([Bruger Id] = @Bruger_Id)">
    <SelectParameters>
        <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiOwner" Type="Int32" />
    </SelectParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>
