<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarDetay.aspx.cs" Inherits="arabaSat.MesajlarDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #999999;
        }
        .auto-style11 {
            width: 1067px;
            text-align: center;
            background-color: #999999;
        }
        .auto-style12 {
            font-size: x-large;
        }
        .auto-style14 {
            font-size: x-large;
            width: 1126px;
            height: 394px;
        }
        .auto-style15 {
            width: 368px;
        }
        .auto-style16 {
            padding-top:20px;
            padding-left:150px;
            text-align: left;

        }
        .auto-style22 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style31 {
            width: 473px;
        }
        .auto-style33 {
            width: 473px;
            height: 60px;
        }
        .auto-style34 {
            width: 924px;
            height: 60px;
        }
        .auto-style35 {
            width: 924px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <table class="auto-style14">
            <tr>
                <td class="auto-style11"><em><strong><span class="auto-style15"><span class="auto-style12">Mesaj Paneli</span><br />
                    <div class="auto-style16">
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style8" Width="826px">
                        <ItemTemplate>
                            <table class="auto-style10">
                                <tr>
                                    <td class="auto-style34"><strong>Gönderici Adı Ve Soyadı:</strong></td>
                                    <em>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IletisimIsim") %>'></asp:Label>
                                    </td>
                                    </em>
                                </tr>
                                <tr>
                                    <td class="auto-style34"><strong><strong><span class="auto-style15">Gönderici </span></strong></strong>İletişim Bilgisi<strong>:</strong></td>
                                    <td class="auto-style33">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("IletisimBilgisi") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style35"><strong>Gönderilen Mesaj:</strong></td>
                                    <td class="auto-style31">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style22" Height="185px" ReadOnly="True" Text='<%# Eval("IletisimMesaj") %>' TextMode="MultiLine" Width="491px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style35">&nbsp;</td>
                                    <td class="auto-style31">&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
                </span></strong></td>
            </tr>
        </table>
    </p>
</asp:Content>
