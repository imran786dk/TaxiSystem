<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="CalculateDriverShift.aspx.cs" Inherits="TaxiSystem.CalculateDriverShift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Chauffør - Beregning af indkørsel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateShift.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style97 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 300px;
            float: left;
            height: 140px;
            position: absolute;
            left: 300px;
            top: 610px;
        }

        .auto-style99 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 350px;
            float: left;
            height: 160px;
            position: absolute;
            left: 300px;
            top: 200px;
        }

        .auto-style100 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 300px;
            float: left;
            height: 180px;
            position: absolute;
            left: 300px;
            top: 395px;
        }

        .auto-style101 {
            position: absolute;
            top: 528px;
            left: 176px;
            float: left;
            width: 150px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Beregning af indkørsel</h3>
        </div>
        <table>
            <tr>
                <td>
                    <table class="auto-style99">
                        <tr>
                            <td class="auto-style96">&nbsp;Start dato:</td>
                            <td class="auto-style94">
                                <asp:TextBox ID="TextBox11" runat="server" Width="120px"></asp:TextBox><span><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" CausesValidation="False" ImageAlign="Bottom" Height="18px" Width="18px" /></span>
                            </td>
                            <td class="auto-style98">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox11" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Datoformat skal være yyyy-MM-dd" ControlToValidate="TextBox11" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="1960-01-01" MaximumValue="2060-01-01">
                                </asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Slut dato:</td>
                            <td class="auto-style94">
                                <asp:TextBox ID="TextBox42" runat="server" Width="120px"></asp:TextBox><span><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" CausesValidation="False" ImageAlign="Bottom" Height="18px" Width="18px" OnClick="ImageButton2_Click" /></span>
                            </td>
                            <td class="auto-style98">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox42" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Datoformat skal være yyyy-MM-dd" ControlToValidate="TextBox11" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="1960-01-01" MaximumValue="2060-01-01">
                                </asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Førerkort nr.:</td>
                            <td class="auto-style94">
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TaxiDriverNo" DataValueField="UserId" Width="120px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Vælg chauffør</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [UserId], [TaxiDriverNo] FROM [tblTaxiDriver]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style98">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList2" InitialValue="0" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Chauffør:</td>
                            <td class="auto-style94">
                                <asp:TextBox ID="TextBox1" runat="server" Width="120px" Enabled="false"></asp:TextBox>
                            </td>
                            <td class="auto-style98"></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style50">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="140px" NextPrevFormat="FullMonth" Width="295px" Font-Bold="True" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <SelectorStyle BorderColor="#4775D1" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style50">
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="140px" NextPrevFormat="FullMonth" Width="295px" Font-Bold="True" OnSelectionChanged="Calendar2_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <SelectorStyle BorderColor="#4775D1" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style101" Text=""></asp:Label>
                </td>
            </tr>
        </table>

        <table class="auto-style100">
            <tr>
                <td class="auto-style90">&nbsp; Enheder:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox2" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Ture:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox3" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Km:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox4" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Besatte</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox7" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Kontrol</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox9" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>

        <table class="auto-style97">
            <tr>
                <td class="auto-style90">&nbsp; Uden taximeter:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox5" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Fejlture:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox6" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; A conto:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox8" runat="server" Width="90px" TextMode="Number" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Taxi km</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox41" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>

        <asp:Button runat="server" ID="Button3" CssClass="btn btn-success" OnClick="Button3_Click" Text="Beregn" Style="width: 68px; float: left; position: absolute; left: 738px; top: 715px" />
        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" Style="width: 68px; height: 36px; float: left; position: absolute; left: 635px; top: 715px" />

    </div>

</asp:Content>
