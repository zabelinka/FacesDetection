using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;


using Emgu.CV;
using Emgu.CV.CvEnum;
using Emgu.CV.Structure;
using Emgu.CV.Cvb;
using Emgu.Util;

namespace FacesDetectionWebApp 
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {    
                String fileName = "image.jpg";
                try
                {
                    FileUploadControl.SaveAs(Server.MapPath("Data") + "\\" + fileName);

                    Image<Bgr, byte> img = DetectFaces(fileName);

                    // display result
                    img.Save(Server.MapPath("Data") + "\\result.jpg");
                    
                    UploadedImage.ImageUrl = "~/Data/" + fileName;
                    ResultImage.ImageUrl = "~/Data/result.jpg";
                }
                catch (Exception ex)
                {
                    UploadStatusLabel.Text = "ERROR: The file could not be uploaded. The following error occured: " + ex.Message;
                }  
            }
        }

        private Image<Bgr, byte> DetectFaces(String fileName)
        {
            Image<Bgr, byte> img = new Image<Bgr, byte>(Server.MapPath("Data") + "\\" + fileName);

            try
            {
                CascadeClassifier faceCascade = new CascadeClassifier(Server.MapPath("Data") + "\\haarcascade_frontalface_default.xml");
                CascadeClassifier eyeCascade = new CascadeClassifier(Server.MapPath("Data") + "\\haarcascade_eye.xml");

                Image<Gray, Byte> grayImage = img.Convert<Gray, Byte>();

                var face_rectangles = faceCascade.DetectMultiScale(grayImage);

                // drow found rectangles on image
                foreach (var face in face_rectangles)
                {
                    img.Draw(face, new Bgr(255, 255, 255), 2);
                }

                // the same for eyes
                /*var eye_rectangles = eyeCascade.DetectMultiScale(grayImage);
                foreach (var eye in eye_rectangles)
                {
                    img.Draw(eye, new Bgr(0, 0, 255), 2);
                }*/
            }
            catch (Exception ex)
            {
                UploadStatusLabel.Text = "ERROR: Faces could not be detected. The following error occured: " + ex.Message;
            }

            return img;
        }
    }
}