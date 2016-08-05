<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TaxiSystem.Register" %>

<form runat="server">    
<table class="auto-style1" align="center">
        <tr>
            <td class="auto-style11">
                <asp:Label ID="NameLabel" runat="server" ForeColor="#333333" Text="Name:" Enabled="False" Style="float: none"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="NameBox" runat="server" AutoPostBack="True" Style="text-align: left" Width="225px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style3">
                <asp:Button ID="SubmitButton" runat="server" Text="Save" Width="75px" Style="text-align: center; margin-bottom: 0px;" OnClick="SubmitButton_Click" BackColor="#CCCCCC" BorderColor="Gray" Font-Bold="True" Height="25px" BorderStyle="Outset" />
            </td>
            <td class="auto-style9">

                <asp:Label ID="StatusLabel" runat="server" ForeColor="#333333" Style="float: left"></asp:Label>

            </td>
        </tr>
    </table>
    </form>