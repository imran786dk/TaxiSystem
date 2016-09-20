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
            left: 800px;
            top: 28px;
        }
        .auto-style52 {
            height: 60px;
            width: 100%;
            position: absolute;
            display: inline-block;
            float: left;
            left: 9px;
            top: 816px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="auto-style10">
        <h3 class="auto-style43">Opret chauffør (Alle felter med * skal udfyldes)</h3>

        <table class="auto-style21">

            <tr>
                <td class="auto-style26">Personlige oplysninger:
                </td>
                <td class="auto-style24">
                </td>
            </tr>
            <tr>
                <td class="auto-style14">CPR:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox20" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Fornavn:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox21" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Efternavn:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox22" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Vej:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox23" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Post nr.:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox24" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">By:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Land:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox25" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">*</td>
            </tr>
            <tr>
                <td class="auto-style14">Tlf:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox27" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Email:</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox29" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>

    </div>
    <div class="auto-style28">
        <table class="auto-style48">
            <tr>
                <td class="auto-style47">
                    <table class="auto-style29">
                        <tr>
                            <td class="auto-style14">Kørekort oplysninger:
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Kørekortsnr.:</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style19">*</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Førerkortnr.:</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="auto-style19">*</td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Førerkorts udløbsdato:</td>
                            <td class="auto-style33">
                                <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                                <td class="auto-style34">*
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calendar.png" OnClick="ImageButton1_Click" /></td>
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


    </div>
    <div class="auto-style30">

        <table class="auto-style12">
            <tr>
                <td class="auto-style14">Lønudbetalings oplysninger:
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Skattefradrag:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Skatteprocent:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Pension procent:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style14">Bankkonto:</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
        </table>

    </div>

    <div class="auto-style52">
        <asp:Button class="auto-style13" ID="Button1" runat="server" Text="Ryd felter" OnClick="Button1_Click" CssClass="auto-style40" />
        <br />
        <br />
        <asp:Button class="auto-style13" ID="Button2" runat="server" Text="Gem" OnClick="Button2_Click" CssClass="auto-style41" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style51" Text=""></asp:Label>
    </div>

</asp:Content>


