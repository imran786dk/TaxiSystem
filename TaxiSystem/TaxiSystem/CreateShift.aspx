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
            left: 1259px;
            top: 819px;
            width: 150px;
        }

        .auto-style54 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 205px;
            position: absolute;
            left: 306px;
            top: 419px;
        }

        .auto-style55 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 210px;
            position: absolute;
            left: 300px;
            top: 95px;
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
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 130px;
            position: absolute;
            left: 306px;
            top: 669px;
        }

        .auto-style60 {
            height: 25px;
            left: 1139px;
            top: 815px;
            width: 90px;
            position: absolute;
        }

        .auto-style61 {
            height: 25px;
            top: 858px;
            width: 90px;
            position: absolute;
            left: 830px;
        }

        .auto-style63 {
            width: 200px;
            height: 16px;
        }

        .auto-style65 {
            width: 100px;
            height: 19px;
        }

        .auto-style66 {
            width: 100px;
            height: 16px;
        }

        .auto-style67 {
            width: 100px;
            height: 27px;
        }

        .auto-style68 {
            width: 200px;
            height: 27px;
        }
        .auto-style69 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            background-color: lightgreen;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            width: 402px;
            height: 192px;
            position: absolute;
            top: 558px;
            left: 787px;
            z-index: 1;
        }
        .auto-style70 {
            width: 100px;
            text-align: left;
            height: 11px;
        }
        .auto-style71 {
            width: 100px;
        }
        .auto-style72 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            background-color: lightpink;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            width: 402px;
            height: 192px;
            position: absolute;
            top: 321px;
            left: 786px;
            z-index: 1;
        }
        .auto-style73 {
            position: absolute;
            top: 816px;
            left: 829px;
            z-index: 1;
            width: 90px;
            height: 25px;
        }
        .auto-style74 {
            width: 100px;
            height: 29px;
        }
        .auto-style75 {
            width: 200px;
            text-align: left;
            height: 29px;
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
                            <td class="auto-style65">Stam oplysninger:
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style66">Vagt dato:</td>
                            <td class="auto-style63">
                                <asp:TextBox ID="TextBox11" runat="server" Width="160px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" CausesValidation="False" />
                            </td>
                            <td class="auto-style66">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox11" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Datoformat skal være dd-mm-yy" ControlToValidate="TextBox11" ForeColor="Red" Display="Dynamic" Type="Date" MinimumValue="01-01-1960" MaximumValue="01-01-2060">
                            </asp:RangeValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style67">Bevilling nr.:</td>
                            <td class="auto-style68">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" AutoPostBack="True" DataTextField="Bevilling" DataValueField="Taxi_Id" Width="200px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Vælg taxi</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Bevilling], [Taxi Id] AS Taxi_Id FROM [vTaxi] WHERE ([Bruger Id] = @Bruger_Id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="Bruger_Id" SessionField="TaxiOwner" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style67">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList1" IntialValue="0" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style67">Førerkort nr.:</td>
                            <td class="auto-style68">
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Førerkort" DataValueField="Bruger_Id" Width="200px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Vælg chauffør</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TaxiSystemCS %>" SelectCommand="SELECT [Førerkort], [Email], [Bruger Id] AS Bruger_Id FROM [vTaxiDriver]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style67">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal vælges" ControlToValidate="DropDownList2" InitialValue="0" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style67">Trafikbog nr.:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style67">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox2" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style67">Trafikbog side:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                            </td>
                            <td class="auto-style67">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox3" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" Type="Integer" MinimumValue="1" MaximumValue="50" ForeColor="Red" Errormessage="Ugyldig side" Display="Dynamic"></asp:RangeValidator>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style50">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderWidth="3px" Font-Names="Arial" Font-Size="9pt" ForeColor="White" Height="177px" NextPrevFormat="ShortMonth" Width="330px" BorderStyle="Solid" CellSpacing="1" Font-Bold="True" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#24478F" Height="8pt" />
                        <DayStyle BackColor="#24478F" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#4775D1" ForeColor="White" />
                        <SelectorStyle BorderColor="#4775D1" />
                        <TitleStyle BackColor="#24478F" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                        <TodayDayStyle BackColor="White" ForeColor="#24478F" />
                    </asp:Calendar>
                </td>
            </tr>
        </table>
        <table class="auto-style54">

            <tr>
                <td class="auto-style70">Nye taximetertal:
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style71">Enheder:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style71">*<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox20" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style71">Ture:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">*<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox21" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style71">Km:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox22" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox22" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style74">Besatte:</td>
                <td class="auto-style75">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style74">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox23" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style71">Kontrol:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">*<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox24" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style71">Taxi km:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style71">*<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox1" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>


        <table class="auto-style59">
            <tr>
                <td class="auto-style14">Andet:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Uden taximeter:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Fejlture:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Aconto:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox8" runat="server" Width="200px" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
        </table>

        <table class="auto-style69">

            <tr>
                <td class="auto-style26">Beregnet vagt for taxifører:
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox28" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Enheder:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Ture:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox7" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Km:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox12" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Besatte:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox13" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>            
            </tr>
            <tr>
                <td class="auto-style14">Kontrol:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox14" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>

         <table class="auto-style72">

            <tr>
                <td class="auto-style26">Gamle taximetertal fra:
                </td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBox29" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Enheder:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox9" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Ture:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox10" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Km:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox16" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Besatte:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox17" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>            
            </tr>
            <tr>
                <td class="auto-style14">Kontrol:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox18" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Taxi km:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox19" runat="server" Width="200px" Enabled="false"></asp:TextBox>
                </td>
            </tr>
        </table>

        <br />
        <br />

        <asp:Label ID="Label1" runat="server" CssClass="auto-style51" Text=""></asp:Label>

        <asp:Button class="auto-style13" ID="Button1" runat="server" Text="Ryd felter" OnClick="Button1_Click" CssClass="auto-style61" CausesValidation="False"/>

        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Gem" OnClick="Button2_Click" CssClass="auto-style60" />

        <asp:Button ID="Button3" runat="server" CssClass="auto-style73" Text="Beregn" OnClick="Button3_Click" />

    </div>

</asp:Content>

