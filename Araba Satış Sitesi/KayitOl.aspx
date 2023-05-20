<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="arabaSat.KayitOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style8 {
        width: 441px;
        font-size: large;
    }
    .auto-style9 {
        font-size: large;
    }
    .auto-style10 {
        width: 441px;
        font-size: large;
        height: 27px;
    }
    .auto-style11 {
        font-size: large;
        height: 27px;
    }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style8"><strong>E-mail Veya Telefon Numaranızı Giriniz:</strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="tboxMail" runat="server" Height="40px" Width="300px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Şifre Giriniz:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="tboxSifre" runat="server" Height="40px" TextMode="Password" Width="300px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong></strong></td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="45px" OnClick="Button1_Click" Text="Kayıt Ol" Width="130px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
