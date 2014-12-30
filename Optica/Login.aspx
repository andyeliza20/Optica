<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Optica.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Optica Andina</title>
    <link href="Content/StyleLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br /><br /><br /><br /><br /><br />
<div class="container">
	<section id="content">
        <form id="form1" runat="server">
        <h1>Optica Andina</h1>
			<div>
                <asp:TextBox ID="username" runat="server" placeholder="Usuario" required=""></asp:TextBox>
			</div>
			<div>
                <asp:TextBox ID="password" runat="server" placeholder="Password" required="" 
                    TextMode="Password"></asp:TextBox>
			</div>
			<div>
				<asp:Button ID="Button1" runat="server" Text="Ingresar" onclick="Button1_Click" />
				<a href="#">Olvide la contraseña?</a>
			</div>
            <div>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
			</div>
        </form>
    </section><!-- content -->
</div><!-- container -->
</body>
</html>
