<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication1.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginPage</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap_css"/>
    
    <link href="css/LoginStyleSheet.css" rel="stylesheet" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
   <body>
  <div class="wrapper fadeInDown">
      <div id="formContent">
          <!-- Tabs Titles -->

          <!-- Icon -->
          <div class="fadeIn first">
               <i class="material-icons opacity-10"</i>
             <!-- <img src="Style/pngtree-correct-icon-image_1267804.jpg" id="icon" alt="User Icon" width="50" />-->
          </div>

          <!-- Login Form -->
          <form id="form1" runat="server">
              <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
              <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>



              <!-- Remind Passowrd -->
              <asp:Button ID="ButLogin" runat="server" OnClick="Button1_Click" Text="Login IN" />
              <div id="formFooter">
                  <a class="underlineHover" href="#">Forgot Password?</a>
              </div>
          </form>
      </div>
</div>
       
    
</body>
</html>
