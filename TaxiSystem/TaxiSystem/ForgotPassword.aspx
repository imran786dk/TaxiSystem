<%@ Page Title="Glemt adgangskode" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TaxiSystem.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Glemt adgangskode
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
     <div class="container">

        <div class="page-header">
            <h3>Få tilsendt en ny adgangskode til din mail</h3>
        </div>

        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input runat="server" id="TextBox20" type="email" class="form-control" name="email" placeholder="Email" required="required" />
        </div>
        <br />
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Send adgangskode"/>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style21" Text=""></asp:Label>
    </div>
</asp:Content>
