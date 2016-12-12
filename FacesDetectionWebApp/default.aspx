<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FasesDetectionWebApp._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
                <h4>Select a file to upload:</h4>

                <asp:FileUpload ID="FileUploadControl" runat="server"></asp:FileUpload>
                <br />
                <br />

                <asp:Button ID="UploadButton" Text="Upload file" OnClick="UploadButton_Click" runat="server">
                </asp:Button>

                <hr />

                <asp:Label ID="UploadStatusLabel" runat="server"></asp:Label>
                <br />
                <asp:Image ID="UploadedImage" runat="server" Width="500" ImageUrl="~/Images/Cat.jpg"></asp:Image>

            </div>
        </form>
</body>
</html>
