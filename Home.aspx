<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #111;
}

.right {
  right: 0;
  background-color: red;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
.header {
  background-color: #cd5d39;
  padding: 40px;
  text-align: left;
}

.header-img {
  width: 100%;
  height: auto;
  background: url(C:\Users\admin\source\repos\WebApplication2\WebApplication1\images\Books-Banner.jpg) ;
  background-size: cover;
}
.footer-img {
  width: 100%;
  height: auto;
  background: url(C:\Users\admin\source\repos\WebApplication2\WebApplication1\images\Books-Banner.jpg) ;
  background-size: cover;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.column.middle {
  width: 100%;
}
.footer {
  background-color: #cd5d39;
  text-align: center;
  padding: 60px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
        
    <h1>Welcome to E-Library</h1>
    </div>

    <div class="topnav">
    <a href="WebForm2.aspx">Home</a>
    <a href="#">Books</a>
    <a href="WebForm4.aspx">Sign in</a>
    <a href="#">Register</a>
    </div>
   
          <div class="column middle">
    <h2 style="color:black" >Main Content</h2>
   
       
    
  </div>
  
    <div class="footer" >
    <p>Footer</p>
    </div>
    
    
    
    </form>
</body>
</html>
