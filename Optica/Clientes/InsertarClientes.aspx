<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertarClientes.aspx.cs" Inherits="Optica.Clientes.InsertarClientes" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 72%;
        }
        .style2
        {
            width: 531px;
        }
        .style4
        {
            width: 899px;
        }
        .style5
        {
            width: 918px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    INSERCIÓN CLIENTES<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="lblCodigo" runat="server" Text="Código:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtCodigo" runat="server" Height="23px" Width="81px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" 
                    onclick="btnGuardar_Click" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblCedula" runat="server" Text="Cédula:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtCedula" runat="server" Height="22px" Width="146px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtNombre" runat="server" Height="23px" Width="170px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblApellidoP" runat="server" Text="Apellido Paterno:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtApellidoP" runat="server" Height="23px" Width="170px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblApellidoM" runat="server" Text="Apellido Materno:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtApellidoM" runat="server" Height="23px" Width="170px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblGenero" runat="server" Text="Género:"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="ddlGenero" runat="server">
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtEmail" runat="server" Height="23px" Width="234px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblOcupacion" runat="server" Text="Ocupación:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtOcupacion" runat="server" Height="23px" Width="309px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblCiudad" runat="server" Text="Ciudad:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtCiudad" runat="server" Height="22px" Width="171px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblDireccion" runat="server" Text="Dirección:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtDireccion" runat="server" Height="23px" Width="358px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblFechaNaci" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtFechaNaci" runat="server" Height="22px" Width="158px"></asp:TextBox>
                <asp:CalendarExtender ID="txtFechaNaci_CalendarExtender" runat="server" 
                    DaysModeTitleFormat="yyyy, MMMM" Format="yyyy-MMMM-d" PopupButtonID="Image1" 
                    TargetControlID="txtFechaNaci" TodaysDateFormat=" yyyy, MMMM d">
                </asp:CalendarExtender>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Imagenes/Calendar_scheduleHS.png" />
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>
