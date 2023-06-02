<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ArabaDetay.aspx.cs" Inherits="arabaSat.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            margin-bottom: 50px;
        }

        .auto-style7 {
            height: 642px;
            width: 1059px;
        }

        .auto-style8 {
            height: 302px;
            width: 622px;
            margin: 20px 20px 20px 25px;
            float: left;
        }

        .auto-style9 {
            height: 371px;
            width: 336px;
            margin-left: 500px;
            margin-top: 0;
            margin: 20px;
            float: left;
        }

        .auto-style10 {
            height: 100px;
            width: 1000px;
            margin-left: 55px;
        }

        .auto-style11 {
            width: 126%;
            height: 327px;
        }

        .auto-style12 {
            height: 24px;
        }

        .auto-style13 {
            width: 100%;
            height: 404px;
            margin-left: 55px;
        }

        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style16 {
            margin-right: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style7">
        <div style="background-color: lightgrey;" class="auto-style13">
            <div style="background-color: lightgrey; opacity: 0.8;" class="auto-style8">
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="274px" ImageUrl='<%# Eval("ArabaFoto1") %>' Width="590px" />
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div style="background-color: lightgrey;" class="auto-style9">
                <asp:DataList ID="DataList3" runat="server" CssClass="auto-style16">
                    <ItemTemplate>
                        <table class="auto-style11">
                            <tr>
                                <td><span class="auto-style14"><strong>Fiyat:</strong>&nbsp; </span>
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text='<%# Eval("Fiyat") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14">&nbsp;<strong>Marka:</strong>&nbsp; </span>
                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("MarkaIsmi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>Model:</strong>&nbsp; </span>
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text='<%# Eval("ArabaModel") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>Yakıt:&nbsp;</strong> </span>
                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text='<%# Eval("YakitTipi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>Vites:</strong>&nbsp; </span>
                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text='<%# Eval("Vites") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style12"><span class="auto-style14"><strong>İl/İlçe:</strong>&nbsp; </span>
                                    <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text='<%# Eval("Konum") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>Satıcı:&nbsp;</strong> </span>
                                    <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text='<%# Eval("Satici") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>İletişim:</strong>&nbsp; </span>
                                    <asp:Label ID="Label9" runat="server" CssClass="auto-style14" Text='<%# Eval("Iletisim") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><span class="auto-style14"><strong>İlan Tarihi:</strong>&nbsp; </span>
                                    <em>
                                    <asp:Label ID="Label10" runat="server" CssClass="auto-style14" Text='<%# Eval("Tarih") %>'></asp:Label>
                                    </em>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
        <div style="background-color: lightgrey; margin-right: 20px; margin-top: 20px; margin-bottom: 20px;" class="auto-style10">
            <asp:DataList ID="DataList4" runat="server">
                <ItemTemplate>
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style15" Height="122px" Text='<%# Eval("Aciklama") %>' TextMode="MultiLine" Width="938px" ReadOnly="True"></asp:TextBox>
                    </strong>
                </ItemTemplate>
            </asp:DataList>
        </div>

    </div>
</asp:Content>
