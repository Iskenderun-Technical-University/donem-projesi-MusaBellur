<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GirişYap.aspx.cs" Inherits="arabaSat.GirişYap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 1102px;
        }
        .auto-style8 {
            width: 442px;
            font-size: large;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
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
            <td class="auto-style9"><strong>
                <asp:TextBox ID="tboxMail" runat="server" Height="40px" Width="300px" CssClass="tb5"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Şifre Giriniz:</strong></td>
            <td class="auto-style11"><strong>
                <asp:TextBox ID="tboxSifre" runat="server" Height="40px" TextMode="Password" Width="302px" CssClass="tb5"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong></strong></td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="45px" OnClick="Button1_Click" Text="Giriş Yap" Width="130px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
