<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CVP_EstadoEmergencia.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            Username:<br />

        </div>
        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px"></asp:TextBox>
        <p>
            Password:</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" TextMode="Password" Width="250px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Height="40px" Text="Iniciar Sessão" Width="259px" OnClick="Button1_Click" />
        </p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
