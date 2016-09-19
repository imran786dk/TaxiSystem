<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestSite.aspx.cs" Inherits="TaxiSystem.TestSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 498px;
        }
    </style>
</head>
<body style="height: 504px">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
