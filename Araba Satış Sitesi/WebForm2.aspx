<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="arabaSat.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style9 {
        width: 140px;
        text-align: center;
    }
    .auto-style19 {
        width: 149px;
        text-align: center;
    }
    .auto-style20 {
        width: 234px;
        text-align: center;
    }
    .auto-style21 {
        width: 148px;
        text-align: center;
    }
    .auto-style23 {
        width: 228px;
        text-align: center;
    }
    .auto-style24 {
        text-align: center;
        font-size: large;
    }
    .auto-style25 {
        width: 148px;
        text-align: center;
        font-size: large;
    }
    .auto-style26 {
        width: 149px;
        text-align: center;
        font-size: large;
    }
    .auto-style27 {
        width: 140px;
        text-align: center;
        font-size: large;
    }
    .auto-style28 {
        width: 234px;
        text-align: center;
        font-size: large;
    }
        .auto-style29 {
            width: 277px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: auto;">
        <table class="auto-style7" __designer:mapid="223">
            <tr __designer:mapid="224">
                <th class="auto-style29" __designer:mapid="225">&nbsp;</th>
                <th class="auto-style28" __designer:mapid="226"><strong __designer:mapid="227">Araba Markası</strong></th>
                <th class="auto-style27" __designer:mapid="228"><strong __designer:mapid="229">Fiyat</strong></th>
                <th class="auto-style26" __designer:mapid="22a"><strong __designer:mapid="22b">İlan Tarihi</strong></th>
                <th class="auto-style25" __designer:mapid="22c"><strong __designer:mapid="22d">İl/İlçe</strong></th>
                <th class="auto-style24" __designer:mapid="22e"><strong __designer:mapid="22f">İletişim</strong></th>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList2" runat="server" Height="228px" Width="1101px" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td class="auto-style23">
                    <asp:Image ID="Image1" runat="server" Height="117px" Width="281px" ImageUrl='<%# Eval("ArabaFoto1") %>' />
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("MarkaIsmi") %>'></asp:Label>
                    &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("ArabaModel") %>'></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Fiyat") %>'></asp:Label>
                    &nbsp;TL</td>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Konum") %>'></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Iletisim") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
    </div>
</asp:Content>
