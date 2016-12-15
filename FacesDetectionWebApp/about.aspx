<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="FacesDetectionWebApp._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>

    <link href="~/Content/Style.css" rel="stylesheet" /> 
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">

</head>

    
<body>
    <div class="container">
        <div class="header">
            <p class="site-title">
                <a runat="server" href="~/">Faces Detection</a>
            </p>
            <p class="slogan">Just load a photo</p>
            <nav>
                <ul id="menu">
                    <li><a runat="server" href="~/">Home</a></li>
                    <li><a runat="server" href="~/about.aspx">About</a></li>
                </ul>
            </nav>

        </div>

        <div class="about-content">
            <h4>About: </h4>
            <p>
                This project was made as a task of the Saint-Petersburg State University course "The Basics of The Grid and Cloud Computing". <br />
                Used technologies: ASP.NET, EmguCV, Microsoft Azure. 
            </p>
            <h4>Contacts: </h4>
            <p>Zabelina Tatiana <br /> ts.zabelina@gmail.com</p>
        </div>
    

        <div class="footer">
            <div class="float-left">
                <p>&copy; <%: DateTime.Now.Year %> - Faces Detection - Zabelina Tatiana</p>
            </div>
        </div>



    </div>



</body>
</html>
