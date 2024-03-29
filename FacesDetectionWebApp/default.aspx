﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FacesDetectionWebApp._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faces Detection</title>

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

    <form id="form1" runat="server">
        <div>

            <label class="file-upload">
                <asp:FileUpload ID="FileUploadControl" Text="Choose a file" runat="server"></asp:FileUpload>
            </label>

            <asp:Button class="file-upload" ID="UploadButton" OnClick="UploadButton_Click" runat="server" ></asp:Button>
            <br />

            <asp:Label ID="UploadStatusLabel" runat="server" Style="color: #FF0000"></asp:Label>
            <br />
            <br />
            <asp:Image ID="UploadedImage" runat="server" Width="49%" ImageUrl="~/Images/test.jpg"></asp:Image>

            <asp:Image ID="ResultImage" runat="server" Width="49%" ImageUrl="~/Images/test_result.jpg" />

        </div>
    </form>

        <div class="footer">
            <div class="float-left">
                <p>&copy; <%: DateTime.Now.Year %> - Faces Detection - Zabelina Tatiana</p>
            </div>
        </div>



    </div>



</body>
</html>
