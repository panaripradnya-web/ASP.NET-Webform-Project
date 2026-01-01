<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practical.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style>
       body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4e73df, #1cc88a);
          
        }

        form
        {
            background: #fff;
            width: 411px;
            padding: 30px;
            margin-top:50px;
            height:439px;
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
        
       h2 
       {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-family:Arial;
            color:ButtonHighlight;
            font-size:40px;
            font-style:normal;
        }
       .error-bg
       {
           background-color:#ffe6e6;
           color:red;
           padding:6px 10px;
           border 1px solid red;
           display:inline-block;
           margin-top:5px;
       }
        .login-btn {
            width: 100%;
            background: #4e73df;
            color: #fff;
            border: none;
            font-size: 16px;
            cursor: pointer;
            padding-bottom:5px;
        }

        .login-btn:hover {
            background: red;
        }
        
    </style>
</head>
<body>
   <center><h2>Login Form</h2></center>
   <center> <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="UserName"></asp:Label>
        <asp:TextBox ID="txtusernm" runat="server" CssClass="input"></asp:TextBox>
        <br/>
            <asp:RequiredFieldValidator
              ID="rfvName"
              runat="server"
              ControlToValidate="txtusernm"
              ErrorMessage="Name is required"
              CssClass="error-bg" 
              ForeColor="red">
        </asp:RequiredFieldValidator>
       </div>
       <br />
      <div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Password"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"  CssClass="input"></asp:TextBox>
            <br/>
            
             <asp:RequiredFieldValidator
               ID="RequiredFieldValidator1"
               runat="server"
               ControlToValidate="txtpass"
               ErrorMessage="Password is required"
               CssClass="error-bg" 
               ForeColor="Red">
           </asp:RequiredFieldValidator>
     <br/>
           <asp:RegularExpressionValidator
                ID="RegularExpressionValidator1"
                runat="server"
                ControlToValidate="txtpass"
                ErrorMessage="Password must be atleast 8 characters"
                CssClass="error-bg"
                Display="Dynamic"
                ValidationExpression="^.{8,}$"
                ForeColor="Red">
            </asp:RegularExpressionValidator>
      </div>    
      <br />
      <div/>
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
     <br />
     <br />
         <!-- Button -->
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" />
    </form>
    </center>
</body>
</html>
