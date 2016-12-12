<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FacesDetectionWebApp._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faces Detection</title>

    <style type="text/css">
        .container{
            width: 1000px;
            margin: auto;
        }

    </style>

</head>

    
    
<body>
    <div class="container">
        <div class="content-wrapper">
        <div class="float-left">
            <p class="site-title">
                <a runat="server" href="~/">
                    <img src="Images/header.jpg" width="1000" />
                </a>
            </p>
        </div>
        <div class="float-right">
            <nav>
                <ul id="menu">
                    <li><a runat="server" href="~/">Home</a></li>
                    <li><a runat="server" href="~/About">About</a></li>
                </ul>
            </nav>
        </div>
    </div>

    <form id="form1" runat="server">
        <div>
            <h4>You upload a file, we detect face on it!</h4>

            <asp:FileUpload ID="FileUploadControl" runat="server" Height="30px"></asp:FileUpload>

            <asp:Button ID="UploadButton" Text="Upload file" OnClick="UploadButton_Click" runat="server" Height="30px"></asp:Button>
            <br />

            <asp:Label ID="UploadStatusLabel" runat="server" Style="color: #FF0000"></asp:Label>
            <br />
            <br />
            <asp:Image ID="UploadedImage" runat="server" Width="500" ImageUrl="~/Images/test.jpg"></asp:Image>

            <asp:Image ID="ResultImage" runat="server" Width="500" Style="margin-top: 0px" ImageUrl="~/Images/test_result.jpg" />

        </div>
    </form>
    </div>
    
</body>
</html>
