<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="IlanOnay.aspx.cs" Inherits="arabaSat.AdminSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style7 {
            background-color: #C0C0C0;
        }
        .auto-style8 {
            width: 107%;
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style10 {
            width: 1103px;
            height: 39px;
            background-color: #C0C0C0;
        }
        .auto-style11 {
            width: 355px;
        }
    .auto-style12 {
        font-size: medium;
    }
    .auto-style14 {
        width: 125px;
        text-align: center;
    }
    .auto-style15 {
        width: 187px;
        text-align: center;
    }
    .auto-style16 {
        text-align: center;
        font-size: xx-large;
        width: 134px;
    }
    .auto-style17 {
        width: 310px;
        text-align: center;
    }
    .auto-style18 {
        width: 134px;
        text-align: center;
    }
    .auto-style19 {
        font-size: large;
    }
        .auto-style20 {
            font-size: large;
            width: 222px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
        <table class="auto-style8">
            <tr>
                <td class="auto-style9"><strong>İlan Onay</strong></td>
            </tr>
        </table>
        <br />
        <table class="auto-style10">
            <tr>
                <th class="auto-style11">&nbsp;</th>
                <th class="auto-style20"><strong>Araba Markası</strong></th>
                <th class="auto-style19"><strong>Fiyat</strong></th>
                <th class="auto-style19"><strong>İlan Tarihi</strong></th>
                <th class="auto-style19"><strong>İl/İlçe</strong></th>
                <th class="auto-style19"><strong>İletişim</strong></th>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList2" runat="server" Height="230px" Width="1100px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <a href="IlanOnayDetay.aspx?ArabaID=<%# Eval("ArabaID")%>"><table class="auto-style7">
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="Image1" runat="server" Height="141px" Width="350px" ImageUrl='<%# Eval("ArabaFoto1") %>' />
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("MarkaIsmi") %>'></asp:Label>
                    &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("ArabaModel") %>'></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Fiyat") %>' CssClass="auto-style12"></asp:Label>
                    &nbsp;<span class="auto-style12">TL</span></td>
                <td class="auto-style15">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Konum") %>'></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Iletisim") %>'></asp:Label>
                </td>
            </tr>
        </table></a>
    </ItemTemplate>
</asp:DataList>
    </asp:Panel>
</asp:Content>
