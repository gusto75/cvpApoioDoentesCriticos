<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdicionarSocorrista.aspx.cs" Inherits="CVP_EstadoEmergencia.AdicionarSocorrista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong style="text-align: center">ADICIONAR SOCORRISTA<br />
            </strong></div>
        <p>
            Nome do Socorrista:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="508px"></asp:TextBox>
        </p>
        <p>
            Username:
            <asp:TextBox ID="TextBox3" runat="server" Width="380px"></asp:TextBox>
        </p>
        <p>
            Password: <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="385px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Adicionar Socorrista" Width="286px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
