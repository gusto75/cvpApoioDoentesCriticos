<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Socorristas.aspx.cs" Inherits="CVP_EstadoEmergencia.Socorristas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: left;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>SOCORRISTAS<br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Utentes.aspx">Utentes</a><br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Visitas.aspx">Visitas</a><br />
            </strong></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1029px">
            <Columns>
                <asp:BoundField DataField="nomeSocorrista" HeaderText="Nome do Soccorrista" SortExpression="nomeSocorrista" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="SELECT nomeSocorrista FROM Socorrista
"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Adicionar" OnClick="Button1_Click" />
    </form>
</body>
</html>
