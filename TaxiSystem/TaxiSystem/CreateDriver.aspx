<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="CreateDriver.aspx.cs" Inherits="TaxiSystem.CreateDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Opret chauffør
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateDriver.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">

    <div class="container">

        <div class="page-header">
            <h3>Opret chauffør (Alle felter med * skal udfyldes)</h3>
        </div>

        <table class="auto-style75">
            <tr>
                <td class="auto-style80">&nbsp; CPR:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox20" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox20" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Fornavn:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox21" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox21" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Efternavn:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox22" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox22" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Vej:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox23" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox23" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Post nr.:</td>
                <td class="auto-style66">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ZipCode" DataValueField="ZipCode" AppendDataBoundItems="True" Width="150px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="16px">
                        <asp:ListItem Selected="True" Value="0">Vælg postnr.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [ZipCode] FROM [tblZipCode]"></asp:SqlDataSource>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList2" InitialValue="0" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; By:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style65"></td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Land:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox30" runat="server" Width="150px" ReadOnly="true"></asp:TextBox>
                </td>
                <td class="auto-style65"></td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Tlf:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox27" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox27" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style80">&nbsp; Email:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox29" runat="server" Width="150px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox29" ForeColor="Red">
                </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ugyldig email" ForeColor="Red" ControlToValidate="TextBox29"
                        Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td>
                    <table class="auto-style71">
                        <tr>
                            <td class="auto-style80">&nbsp; Kørekortnr.:</td>
                            <td class="auto-style66">
                                <asp:TextBox ID="TextBox9" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox9" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style80">&nbsp; Førerkortnr.:</td>
                            <td class="auto-style66">
                                <asp:TextBox ID="TextBox10" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox10" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style80">&nbsp; Gyldig til:</td>
                            <td class="auto-style66">
                                <asp:TextBox ID="TextBox11" runat="server" Width="130px"></asp:TextBox><span><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" CausesValidation="False" ImageAlign="Bottom" Height="18px" Width="18px" /></span>
                            </td>
                            <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox11" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Datoformat skal være dd-mm-yy" ControlToValidate="TextBox11" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="01-01-1960" MaximumValue="01-01-2060">
                                </asp:RangeValidator>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style81">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="140px" NextPrevFormat="FullMonth" Width="295px" Font-Bold="True" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <SelectorStyle BorderColor="#4775D1" />
                        <TitleStyle BackColor="White" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" BorderColor="Black" BorderWidth="4px" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
        </table>

        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" Style="width: 68px; height: 36px; float: left; position: absolute; left: 478px; top: 750px" />
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Gem" Style="width: 68px; height: 36px; float: left; position: absolute; left: 581px; top: 750px" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style51" style="width: 150px; height: 15px; float: left; position: absolute; left: 689px; top: 762px"></asp:Label>

    </div>

</asp:Content>



