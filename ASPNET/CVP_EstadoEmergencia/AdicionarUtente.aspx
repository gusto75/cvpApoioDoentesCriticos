<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarUtente.aspx.cs" Inherits="CVP_EstadoEmergencia.AdicionarUtente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>ADICIONAR UTENTE<br />
            </strong></div>
        <p>
            Nome do Utente:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="508px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; Género:
            <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="135px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            Contacto:
            <asp:TextBox ID="TextBox6" runat="server" Height="21px" Width="135px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; Contacto Alternativo:<asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="135px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            Morada:
            <asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="508px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; Freguesia:
            <asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="223px"></asp:TextBox>
        </p>
        <p>
            Data de Nascimento:
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            Contactada: <asp:CheckBox ID="CheckBox1" runat="server" />
        </p>
        <p>
            Data de Contacto:</p>
        <p>
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Adicionar Utente" Width="286px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
