<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="IlanOnayDetay.aspx.cs" Inherits="arabaSat.IlanOnayDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            height: 576px;
        }

        .auto-style8 {
            font-size: medium;
            background-color: #999999;
        }

        .auto-style9 {
            font-size: medium;
            height: 25px;
            background-color: #999999;
        }

        .auto-style10 {
            font-size: large;
            width: 430px;
            text-align: left;
            background-color: #999999;
        }

        .auto-style16 {
            font-size: x-large;
            height: 25px;
            width: 430px;
            text-align: left;
            background-color: #999999;
        }

        .auto-style17 {
            font-size: medium;
            text-align: left;
            height: 40px;
            background-color: #999999;
        }

        .auto-style21 {
            font-size: medium;
            height: 40px;
            background-color: #999999;
        }

        .auto-style23 {
            font-size: x-large;
            height: 40px;
            width: 430px;
            text-align: left;
            background-color: #999999;
        }

        .auto-style25 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: large;
        }

        .auto-style26 {
            border: 2px solid black;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
                <br />
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style23"><strong>Ad ve Soyad:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxisim" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("Satici") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Araba Modeli:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxModel" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("ArabaModel") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Arabanın Fiyatı:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxFiyat" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("Fiyat") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Araba Yakıt Tipi:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxYakıt" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("YakitTipi") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Araba Vites Türü:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxVites" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("Vites") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Araba Fotoğraf Linki:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxFoto" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("ArabaFoto1") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>İl/İlçe:</strong></td>
                        <td class="auto-style17"><strong>
                            <asp:TextBox ID="tboxKonum" runat="server" CssClass="auto-style26" Height="30px" Width="250px" Text='<%# Eval("Konum") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><strong>Telefon Numarası:</strong></td>
                        <td class="auto-style21"><strong>
                            <asp:TextBox ID="tboxTel" runat="server" CssClass="auto-style26" Height="30px" Width="250px" ReadOnly="True" Text='<%# Eval("Iletisim") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><strong>Açıklama:</strong></td>
                        <td class="auto-style9"><strong>
                            <asp:TextBox ID="tboxAciklama" runat="server" CssClass="auto-style26" Height="160px" TextMode="MultiLine" Width="648px" Text='<%# Eval("Aciklama") %>'></asp:TextBox>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style8"><strong>
                            <a href="IlanOnay.aspx?Arabaid=<%# Eval("ArabaID") %> "><asp:Button ID="BtnSend" runat="server" CssClass="auto-style25" Height="55px" OnClick="BtnSend_Click" Text="İlanı Onayla" Width="228px" /></a>
                        </strong></td>
                    </tr>
                </table>
        </ItemTemplate>

    </asp:DataList>

</asp:Content>
