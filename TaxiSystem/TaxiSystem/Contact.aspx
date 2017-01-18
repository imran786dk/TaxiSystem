<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TaxiSystem.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Kontakt
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="jumbotron">
            <p>
                Email: <asp:HyperLink ID="HyperLink1" runat="server">taxisystemdk@gmail.com</asp:HyperLink>
            </p>
        </div>

    </div>
</asp:Content>
