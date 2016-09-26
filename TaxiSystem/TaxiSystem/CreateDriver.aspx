<%@ Page Title="Opret chauffør" Language="C#" MasterPageFile="~/MenuMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateDriver.aspx.cs" Inherits="TaxiSystem.CreateDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/CreateDriver.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style50 {
            height: 189px;
            width: 380px;
        }

        .auto-style51 {
            position: absolute;
            left: 773px;
            top: 862px;
        }

        .auto-style53 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 155px;
            position: absolute;
            left: 301px;
            top: 638px;
            z-index: 1;
        }

        .auto-style54 {
            height: 25px;
            top: 858px;
            width: 90px;
            position: absolute;
            left: 343px;
            z-index: 1;
        }

        .auto-style56 {
            height: 25px;
            left: 649px;
            top: 858px;
            width: 90px;
            position: absolute;
        }

        .auto-style57 {
            width: 100px;
            text-align: left;
            height: 27px;
        }

        .auto-style65 {
            width: 100px;
            height: 27px;
        }

        .auto-style66 {
            width: 200px;
            text-align: left;
            height: 27px;
        }

        .auto-style68 {
            width: 1602px;
            height: 935px;
        }

        .auto-style69 {
            height: 125px;
            width: 432px;
            margin-left: 522px;
            position: absolute;
            top: 494px;
            left: 233px;
            z-index: 1;
        }

        .auto-style71 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 155px;
            position: absolute;
            left: -455px;
            top: -37px;
        }

        .auto-style74 {
            height: 189px;
            width: 14px;
        }

        .auto-style10 {
            width: 1602px;
            height: 364px;
        }

        .auto-style12 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 165px;
            position: absolute;
            left: 300px;
            top: 600px;
        }

        .autostyle15 {
            width: 150px;
        }

        .auto-style14 {
            width: 90px;
        }

        .auto-style19 {
            width: 68px;
        }

        .auto-style21 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 400px;
            margin-top: 40px;
            margin-left: 40px;
            display: inline-block;
            float: left;
            height: 280px;
            position: absolute;
            left: 300px;
            top: 100px;
        }

        .auto-style24 {
            width: 200px;
            text-align: left;
            height: 11px;
        }

        .auto-style26 {
            width: 90px;
            text-align: left;
            height: 11px;
        }

        .auto-style28 {
            height: 197px;
        }

        .auto-style29 {
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
            left: 300px;
            top: 420px;
        }

        .auto-style30 {
            height: 245px;
        }

        .auto-style32 {
            width: 90px;
            height: 38px;
        }

        .auto-style33 {
            width: 200px;
            height: 38px;
        }

        .auto-style34 {
            width: 68px;
            height: 38px;
        }

        .auto-style35 {
            height: 167px;
            width: 500px;
            margin-left: 522px;
        }

        .auto-style36 {
            width: 200px;
        }

        .auto-style37 {
            width: 200px;
            text-align: left;
        }

        .auto-style38 {
            width: 199px;
        }

        .auto-style39 {
            height: 60px;
            position: absolute;
            display: inline-block;
            float: left;
            left: 11px;
            top: 821px;
        }

        .auto-style40 {
            height: 25px;
            top: 20px;
            width: 75px;
            position: absolute;
            left: 330px;
        }

        .auto-style41 {
            height: 25px;
            left: 655px;
            top: 20px;
            width: 75px;
            position: absolute;
        }

        .auto-style43 {
            height: 22px;
        }

        .auto-style45 {
            height: 189px;
        }

        .auto-style46 {
            height: 189px;
            width: 4px;
        }

        .auto-style47 {
            height: 189px;
            width: 42px;
        }

        .auto-style48 {
            height: 167px;
            width: 432px;
            margin-left: 522px;
        }

        .auto-style49 {
            height: 60px;
            width: 100%;
            position: absolute;
            display: inline-block;
            float: left;
            left: 9px;
            top: 816px;
            right: 195px;
        }

        .auto-style75 {
            width: 400px;
            display: inline-block;
            float: left;
            height: 330px;
            position: absolute;
            left: 300px;
            top: 100px;
            border-style: solid;
            border-width: 3px;
            margin-left: 40px;
            margin-top: 40px;
            padding: 1px 4px;
        }

        .auto-style78 {
            width: 100px;
        }

        .auto-style79 {
            width: 100px;
            height: 38px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="auto-style68">
        <h3 class="auto-style43">Opret chauffør (Alle felter med * skal udfyldes)</h3>

        <table class="auto-style75">

            <tr>
                <td class="auto-style57">Personlige oplysninger:
                </td>
                <td class="auto-style66"></td>
            </tr>
            <tr>
                <td class="auto-style65">CPR:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox20" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Fornavn:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox21" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Efternavn:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox22" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox22" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Vej:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox23" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Post nr.:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox24" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">By:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox1" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Land:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox25" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox25" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Tlf:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox27" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65">*<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox27" ForeColor="Red">
                </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style65">Email:</td>
                <td class="auto-style66">
                    <asp:TextBox ID="TextBox29" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style65"></td>
            </tr>
        </table>


        <table class="auto-style69">
            <tr>
                <td class="auto-style74">
                    <table class="auto-style71">
                        <tr>
                            <td class="auto-style78">Kørekort oplysninger:
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style78">Kørekortnr.:</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style78">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox9" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style78">Førerkortnr.:</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style78">*<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox10" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style79">Førerkorts udløbsdato:</td>
                            <td class="auto-style33">
                                <asp:TextBox ID="TextBox11" runat="server" Width="161px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" CausesValidation="False"/>
                                <td class="auto-style79">*<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Skal udfyldes" ControlToValidate="TextBox11" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style50">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderWidth="3px" Font-Names="Arial" Font-Size="9pt" ForeColor="White" Height="180px" NextPrevFormat="ShortMonth" Width="330px" BorderStyle="Solid" CellSpacing="1" Font-Bold="True" OnSelectionChanged="Calendar1_SelectionChanged">
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



        <table class="auto-style53">
            <tr>
                <td class="auto-style78">Lønudbetalings oplysninger:
                </td>
            </tr>
            <tr>
                <td class="auto-style78">Skattefradrag:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style78"></td>
            </tr>
            <tr>
                <td class="auto-style78">Skatte %:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style78"></td>
            </tr>
            <tr>
                <td class="auto-style78">Pension %:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style78"></td>
            </tr>
            <tr>
                <td class="auto-style78">Bankkonto:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style78"></td>
            </tr>
        </table>

        <asp:Button class="auto-style13" ID="Button1" runat="server" Text="Ryd felter" OnClick="Button1_Click" CssClass="auto-style54" CausesValidation="False"/>
        <br />
        <br />
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Gem" OnClick="Button2_Click" CssClass="auto-style56"/>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style51" Text=""></asp:Label>
    </div>

</asp:Content>



