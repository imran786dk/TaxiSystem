<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTaxiOwner.Master" AutoEventWireup="true" CodeBehind="CreateShift.aspx.cs" Inherits="TaxiSystem.CreateShift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateShift.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style50 {
            height: 281px;
            width: 380px;
        }

        .auto-style51 {
            position: absolute;
            left: 873px;
            top: 640px;
            width: 150px;
        }

        .auto-style55 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 350px;
            float: left;
            height: 200px;
            position: absolute;
            left: 330px;
            top: 120px;
        }

        .auto-style57 {
            height: 889px;
        }

        .auto-style58 {
            height: 281px;
            width: 39px;
        }

        .auto-style59 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 300px;
            float: left;
            height: 140px;
            position: absolute;
            left: 330px;
            top: 530px;
        }

        .auto-style71 {
            width: 100px;
        }

        .auto-style76 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 613px;
            height: 140px;
            position: absolute;
            left: 330px;
            top: 355px;
            float: left;
        }

        .auto-style90 {
            width: 100px;
            height: 16px;
        }

        .auto-style93 {
            width: 167px;
            height: 16px;
        }

        .auto-style94 {
            width: 167px;
            height: 27px;
        }

        .auto-style96 {
            width: 100px;
            height: 27px;
        }

        .auto-style97 {
            width: 72px;
            height: 16px;
        }

        .auto-style98 {
            width: 72px;
            height: 27px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h3>Opret vagt (Alle felter med * skal udfyldes)</h3>
    <div class="auto-style57">
        <table class="auto-style48">
            <tr>
                <td class="auto-style58">
                    <table class="auto-style55">
                        <tr>
                            <td class="auto-style90">&nbsp; Vagt dato:</td>
                            <td class="auto-style93">
                                <asp:TextBox ID="TextBox11" runat="server" Width="121px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" CausesValidation="False" Height="18px" Width="18px" />
                            </td>
                            <td class="auto-style97">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox11" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Datoformat skal være dd-mm-yy" ControlToValidate="TextBox11" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="01-01-1960" MaximumValue="01-01-2060">
                                </asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Bevilling nr.:</td>
                            <td class="auto-style94">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="Bevilling" DataValueField="Taxi_Id" Width="120px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Vælg taxi</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Bevilling], [Taxi Id] AS Taxi_Id FROM [vTaxi] WHERE ([Bruger Id] = @Bruger_Id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiOwner" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style98">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList1" InitialValue="0" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Førerkort nr.:</td>
                            <td class="auto-style94">
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Førerkort" DataValueField="Bruger_Id" Width="120px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="21px">
                                    <asp:ListItem Selected="True" Value="0">Vælg chauffør</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Førerkort], [Email], [Bruger Id] AS Bruger_Id FROM [vTaxiDriver]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style98">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList2" InitialValue="0" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Trafikbog nr.:</td>
                            <td class="auto-style94">
                                <asp:TextBox ID="TextBox2" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style98">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox2" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style96">&nbsp; Trafikbog side:</td>
                            <td class="auto-style94">
                                <asp:TextBox ID="TextBox3" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style98">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox3" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" Type="Integer" MinimumValue="1" MaximumValue="50" ForeColor="Red" ErrorMessage="Ugyldig side" Display="Dynamic"></asp:RangeValidator>
                            </td>
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
            </tr>
        </table>

        <table class="auto-style59">
            <tr>
                <td class="auto-style90">&nbsp; Uden taximeter:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox5" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style90">*<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox5" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Fejlture:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox6" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style90">*<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox6" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; A conto:</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox8" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style90">*<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox8" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Taxiens km</td>
                <td class="auto-style90">
                    <asp:TextBox ID="TextBox41" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td class="auto-style90">*<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox8" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        <br />
        <br />

        <asp:Button runat="server" ID="Button1" CssClass="btn btn-danger" OnClick="Button1_Click" Text="Ryd" CausesValidation="False" Style="width: 68px; height: 36px; float: left; position: absolute; left: 671px; top: 558px" />
        <asp:Button runat="server" ID="Button3" CssClass="btn btn-success" OnClick="Button3_Click" Text="Beregn" Style="width: 68px; height: 36px; float: left; position: absolute; left: 670px; top: 623px" />

        <table class="auto-style76">
            <tr>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style71">Antal Enheder</td>
                <td class="auto-style71">Antal Ture</td>
                <td class="auto-style71">Total km</td>
                <td class="auto-style71">Besatte km</td>
                <td class="auto-style71">Kontrol km</td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Slut</td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox15" runat="server" Width="90px"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox25" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox26" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox27" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox30" runat="server" Width="90px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; Start</td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox31" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox32" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox33" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox34" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox35" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style90">&nbsp; I alt</td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox36" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox37" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox38" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox39" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox40" runat="server" Width="90px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button runat="server" ID="Button2" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Gem" Style="width: 68px; height: 36px; float: left; position: absolute; left: 777px; top: 623px" />

        <asp:Label ID="Label1" runat="server" CssClass="auto-style51" Text=""></asp:Label>
    </div>

</asp:Content>

