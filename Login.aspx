<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectWebShare.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            height: 570px;
            width: 717px;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 458px;
            background-color: #E4E2D6;
        }
        .auto-style4 {
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 503px; width: 547px">
    <form id="form1" runat="server">
    
        <div class="auto-style3">
    
        <br />
        <br />
        <br />
        <h1 class="auto-style2" style="font-family: 'Britannic Bold'">Login to WebShare System</h1>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="studentid" runat="server"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="studentid" CssClass="auto-style4" ErrorMessage="Student ID is Required"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass" CssClass="auto-style4" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            <br />
        <br />
        not a member ? <span class="auto-style1"><a href="Signup.aspx">sign up here</a><br />
            <br />
        </span>&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
    </form>
    <p>
        all rights reserved. WebShare Website © 2018</p>
</body>
</html>
