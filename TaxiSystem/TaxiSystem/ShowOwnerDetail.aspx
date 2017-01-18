<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ShowOwnerDetail.aspx.cs" Inherits="TaxiSystem.ShowOwnerDetail" %>

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

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="Bruger" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Cvr" HeaderText="Cvr" SortExpression="Cvr" />
                <asp:BoundField DataField="Firma" HeaderText="Firma" SortExpression="Firma" />
                <asp:BoundField DataField="Fornavn" HeaderText="Fornavn" SortExpression="Fornavn" />
                <asp:BoundField DataField="Efternavn" HeaderText="Efternavn" SortExpression="Efternavn" />
                <asp:BoundField DataField="Vej" HeaderText="Vej" SortExpression="Vej" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="By" HeaderText="By" SortExpression="By" />
                <asp:BoundField DataField="Land" HeaderText="Land" SortExpression="Land" />
                <asp:BoundField DataField="Tlf" HeaderText="Tlf" SortExpression="Tlf" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Løn_dato" HeaderText="Løn dato" SortExpression="Løn_dato" />
                <asp:BoundField DataField="column1" HeaderText="Løn %" SortExpression="column1" />
                <asp:BoundField DataField="Oprettet" DataFormatString="{0:yyyy/MM/dd}" HeaderText="Oprettet" SortExpression="Oprettet" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Cvr], [Firma], [Løn dato] AS Løn_dato, [Løn %] AS column1, [Bruger], [Fornavn], [Efternavn], [Vej], [Post], [Tlf], [Email], [Oprettet], [Status], [By], [Land] FROM [vTaxiOwner] WHERE ([Bruger] = @Bruger)">
            <SelectParameters>
                <asp:SessionParameter Name="Bruger" SessionField="TaxiOwner" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
