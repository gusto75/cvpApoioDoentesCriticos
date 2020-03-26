<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarVisita.aspx.cs" Inherits="CVP_EstadoEmergencia.AdicionarVisita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        #form1 {
            height: 72px;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>ADICIONAR VISITA<br />
            </strong></div>
        <p>
            Nome do Utente:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="nomeUtente" DataValueField="nomeUtente" Height="21px" Width="429px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="SELECT [nomeUtente] FROM [Utente]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="Select nomeSocorrista FROM Socorrista"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Socorrista: <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomeSocorrista" DataValueField="nomeSocorrista" Height="21px" Width="429px">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Data da Visita:
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </p>
        <p style="margin-left: 4px">
            Motivo:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="descricaoMotivo" DataValueField="descricaoMotivo" Height="21px" Width="237px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cvpAssistenciaUtentesConnectionString %>" SelectCommand="SELECT [descricaoMotivo] FROM [Motivo]"></asp:SqlDataSource>
        </p>
        <p style="margin-left: 4px">
            Observações:</p>
        <p style="margin-left: 4px">
            <asp:TextBox ID="TextBox1" runat="server" Height="69px" Width="415px"></asp:TextBox>
        </p>
        <p style="margin-left: 4px">
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Adicionar Visita" Width="286px" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
