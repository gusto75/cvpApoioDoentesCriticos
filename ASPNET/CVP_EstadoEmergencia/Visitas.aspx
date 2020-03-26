<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Visitas.aspx.cs" Inherits="CVP_EstadoEmergencia.Visitas" %>

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
            <strong>VISITAS<br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Utentes.aspx">Utentes</a><br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Socorristas.aspx">Socorristas</a><br />
            </strong></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1029px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="nomeUtente" HeaderText="nomeUtente" SortExpression="nomeUtente" />
                <asp:BoundField DataField="freguesia" HeaderText="freguesia" SortExpression="freguesia" />
                <asp:BoundField DataField="dataVisita" HeaderText="dataVisita" SortExpression="dataVisita" />
                <asp:BoundField DataField="descricaoMotivo" HeaderText="descricaoMotivo" SortExpression="descricaoMotivo" />
                <asp:BoundField DataField="nomeSocorrista" HeaderText="nomeSocorrista" SortExpression="nomeSocorrista" />
                <asp:BoundField DataField="observacoes" HeaderText="observacoes" SortExpression="observacoes" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="SELECT u.nomeUtente, u.freguesia, v.dataVisita, m.descricaoMotivo, s.nomeSocorrista, v.observacoes FROM Visita v JOIN Utente u ON u.idUtente=v.idUtente JOIN Motivo m ON m.idMotivo=v.motivo JOIN Socorrista s ON s.idSocorrista=v.idSocorrista"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Adicionar" OnClick="Button1_Click" />
    </form>
</body>
</html>
