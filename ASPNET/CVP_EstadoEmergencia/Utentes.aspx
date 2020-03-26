<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Utentes.aspx.cs" Inherits="CVP_EstadoEmergencia.Utentes" %>

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
            <strong>UTENTES<br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Visitas.aspx">Visitas</a><br />
            </strong></div>
        <div class="auto-style3">
            <strong><a href="Socorristas.aspx">Socorristas</a><br />
            </strong></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1029px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="nomeUtente" HeaderText="Nome do Utente" SortExpression="nomeUtente" />
                <asp:BoundField DataField="generoUtente" HeaderText="Género" SortExpression="generoUtente" />
                <asp:BoundField DataField="dataNascimento" HeaderText="Data de Nascimento" SortExpression="dataNascimento" />
                <asp:BoundField DataField="contactoUtente" HeaderText="Contacto" SortExpression="contactoUtente" />
                <asp:BoundField DataField="contactoAltUtente" HeaderText="Contacto Alernativo" SortExpression="contactoAltUtente" />
                <asp:BoundField DataField="freguesia" HeaderText="Freguesia" SortExpression="freguesia" />
                <asp:BoundField DataField="moradaCompleta" HeaderText="Morada Completa" SortExpression="moradaCompleta" />
                <asp:CheckBoxField DataField="contactada" HeaderText="Contactado" SortExpression="contactada" />
                <asp:BoundField DataField="dataContacto" HeaderText="Data de Contacto" SortExpression="dataContacto" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="SELECT nomeUtente, generoUtente, dataNascimento, contactoUtente, contactoAltUtente, freguesia, moradaCompleta, contactada, dataContacto FROM Utente"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Adicionar" OnClick="Button1_Click" />
    </form>
</body>
</html>
