<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="ChangePasswordOwner.aspx.cs" Inherits="TaxiSystem.ChangePasswordOwner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Skift adgangskode
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Skift din adgangskode</h3>
        </div>

        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input runat="server" id="TextBox1" type="password" class="form-control" name="password" placeholder="Nuværende adgangskode" required="required" />
        </div>
        <br />
        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input runat="server" id="TextBox2" type="password" class="form-control" name="password" placeholder="Ny adgangskode" required="required" />
        </div>
        <br />
        <div class="input-group col-xs-3">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input runat="server" id="TextBox3" type="password" class="form-control" name="password" placeholder="Gentag ny adgangskode" required="required" />
        </div>
        <br />
        <asp:button runat="server" id="Button2" cssclass="btn btn-primary" onclick="Button2_Click" text="Skift adgangskode" />
        <asp:label id="Label1" runat="server" text="" cssclass="auto-style27"></asp:label>

    </div>

</asp:Content>
