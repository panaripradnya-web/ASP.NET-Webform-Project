<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Practical.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
   
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4e73df, #1cc88a);
          
        }

        #form2 {
            background: #fff;
            width: 360px;
            padding: 30px;
            margin-top:150px;
            
            
            
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        

         input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

         input:focus {
            outline: none;
            border-color: #4e73df;
        }

        .login-btn {
            width: 100%;
            background: #4e73df;
            color: #fff;
            padding-bottum:10px;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #375adf;
        }

        .error-bg {
            background-color: #ffe6e6;
            color: red;
            padding: 6px;
            border: 1px solid red;
            font-size: 13px;
            margin-top: 5px;
            display: inline-block;
        }
        
       
        
    </style>
</head>

<body>

<center><form id="form2" runat="server">

    <div>
        <center><h2>Login</h2></certer>
      </div>
        <!-- Email -->
        <div >
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>

            <asp:RequiredFieldValidator 
                ID="rfvEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required"
                CssClass="error-bg"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                ID="revEmail"
                runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format"
                CssClass="error-bg"
                Display="Dynamic"
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
            </asp:RegularExpressionValidator>
        </div>
        <br/>
        <!-- Password -->
        <div>
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

            <asp:RequiredFieldValidator
                ID="rfvPassword"
                runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required"
                CssClass="error-bg"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
        </div>
        <br/>

        <!-- Button -->
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" />
</form>
</center>
</body>
</html>