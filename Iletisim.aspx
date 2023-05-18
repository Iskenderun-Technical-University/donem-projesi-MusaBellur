<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="arabaSat.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }

        .auto-style8 {
            width: 327px;
            font-size: large;
        }

        .auto-style9 {
            width: 327px;
            font-size: large;
            height: 24px;
        }

        .auto-style10 {
            height: 24px;
        }

        .auto-style12 {
            width: 327px;
            font-size: large;
            height: 50px;
        }

        .auto-style13 {
            height: 50px;
        }

        .auto-style14 {
            width: 100%;
            height: 48px;
        }

        .auto-style15 {
            font-size: xx-large;
        }

        .auto-style16 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: medium;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style14">
            <tr>
                <td class="auto-style2"><em><strong><span class="auto-style15">Mesaj Paneli<br />
                </span></strong></em></td>
            </tr>
        </table>
        <table class="auto-style7">
            <tr>
                <td class="auto-style12"><strong>Adınızı Ve Soyadınızı Giriniz:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="tboxAd" runat="server" Height="30px" Width="300px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>İletişim Bilginizi Giriniz:</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="tboxBilgi" runat="server" Height="30px" Width="300px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mesajınızı Giriniz:</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="tboxMesaj" runat="server" Height="294px" TextMode="MultiLine" Width="660px" OnTextChanged="tboxMesaj_TextChanged" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnGonder" runat="server" CssClass="auto-style16" Height="50px" OnClick="BtnGonder_Click" Text="Göder" Width="160px" />
                </strong></td>
            </tr>
        </table>
    </p>
</asp:Content>
