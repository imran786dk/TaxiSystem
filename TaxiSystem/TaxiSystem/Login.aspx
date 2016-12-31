<%@ Page Title="Log ind" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaxiSystem.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Log ind med din email og adgangskode</h3>
        </div>

        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input runat="server" id="TextBox20" type="email" class="form-control" name="email" placeholder="Email" required="required" />
        </div>
        <br />
        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input runat="server" id="TextBox9" type="password" class="form-control" name="password" placeholder="Adgangskode" required="required" />
        </div>
        <br />
        <a href="ForgotPassword.aspx">Glemt adgangskode?</a>
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Log ind"/>
        <asp:Label ID="Label1" runat="server" Text="" CssClass="auto-style27"></asp:Label>
    </div>
</asp:Content>
