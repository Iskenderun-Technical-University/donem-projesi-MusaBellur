<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="arabaSat.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style9 {
            text-align: center;
            width: 376px;
            font-size: x-large;
        }
        .auto-style11 {
            background-color: #999999;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style13 {
            text-align: center;
            font-size: large;
            width: 378px;
        }
        .auto-style14 {
            text-align: center;
            font-size: large;
            width: 361px;
        }
        .auto-style15 {
            width: 99%;
        }
        .auto-style16 {
            width: 100%;
            height: 58px;
        }
        .auto-style17 {
            text-align: center;
            width: 345px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
        <table class="auto-style7">
            <tr>
                <td class="auto-style9"><strong>Gönderen</strong></td>
                <td class="auto-style17"><strong>İletişim Bilgisi</strong></td>
                <td class="auto-style8"><strong>Gönderilme Tarihi</strong></td>
            </tr>
        </table>
        <br />
        <asp:DataList ID="DataList1" runat="server" Width="1093px">
            <ItemTemplate>
                <a href="MesajlarDetay.aspx?IletisimID=<%# Eval("IletisimID")%>"><table class="auto-style7">
                    <tr>
                        <td class="auto-style13"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("IletisimIsim") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style14"><strong>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("IletisimBilgisi") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style12"><strong>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("IletisimTarih") %>'></asp:Label>
                            </strong></td>
                    </tr>
                </table></a>
            </ItemTemplate>
        </asp:DataList>
        <br />
    </asp:Panel>
</asp:Content>
