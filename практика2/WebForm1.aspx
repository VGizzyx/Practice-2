<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="практика2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Имя пользователя
            <asp:TextBox ID="Login" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Login" ErrorMessage="Поле не должно быть пустым"></asp:RequiredFieldValidator>
            <br />
            Пароль
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Не менее 8 символов" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Поле не должно быть пустым"></asp:RequiredFieldValidator>
            <br />
            Проверка пароля
            <asp:TextBox ID="PasswordAccess" runat="server"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="PasswordAccess" ErrorMessage="Пароли не совпадают"></asp:CompareValidator>
            <br />
            Почта
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Неверный формат" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Возраст
            <asp:TextBox ID="Age" runat="server"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="От 18 до 65" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Отправить" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
