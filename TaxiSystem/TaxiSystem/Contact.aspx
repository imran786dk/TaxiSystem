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
                <b>Kontakt oplysninger</b><br />
                Tlf: 50 310 310 (mellem kl. 10:00-16.00 på hverdage)<br />
                Email: <a href="mailto:taxisystemdk@gmail.com">taxisystemdk@gmail.com</a>
            </p>
        </div>

    </div>
</asp:Content>
