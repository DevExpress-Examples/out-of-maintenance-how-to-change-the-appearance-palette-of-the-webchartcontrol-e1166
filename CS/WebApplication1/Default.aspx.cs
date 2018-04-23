using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.XtraCharts.Native;
using DevExpress.XtraCharts;
using System.Drawing;
using System.IO;
using DevExpress.XtraCharts.Web;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        public static System.Drawing.Image CreateEditorImage(Palette palette)
        {
            const int imageSize = 10;
            Bitmap image = null;
            try
            {
                image = new Bitmap(palette.Count * (imageSize + 1) - 1, imageSize);
                using (Graphics g = Graphics.FromImage(image))
                {
                    Rectangle rect = new Rectangle(Point.Empty, new Size(imageSize, imageSize));
                    for (int i = 0; i < palette.Count; i++, rect.X += 11)
                    {
                        using (Brush brush = new SolidBrush(palette[i].Color))
                            g.FillRectangle(brush, rect);
                        Rectangle penRect = rect;
                        penRect.Width--;
                        penRect.Height--;
                        using (Pen pen = new Pen(Color.Gray))
                            g.DrawRectangle(pen, penRect);
                    }
                }
            }
            catch
            {
                if (image != null)
                {
                    image.Dispose();
                    image = null;
                }
            }
            return image;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string[] names = WebChartControl1.PaletteRepository.PaletteNames;
            System.Drawing.Image[] images = new System.Drawing.Image[names.Length];
            Size imageSize = Size.Empty;
            ASPxComboBox1.Items.Clear();
            for (int i = 0; i < names.Length; i++)
            {
                string name = names[i];
                if (!File.Exists(Server.MapPath("Images") + "\\" + name + ".bmp"))
                {
                    Palette palette = WebChartControl1.PaletteRepository[name];
                    System.Drawing.Image image = CreateEditorImage(palette);
                    string path = Server.MapPath("Images") + "\\" + name + ".bmp";
                    image.Save(path, System.Drawing.Imaging.ImageFormat.Bmp);
                }
                else
                {
                    ASPxComboBox1.Items.Add(name);
                    ASPxComboBox1.Items[i].ImageUrl = @"~/Images" + "/" + name + ".bmp";
                }
            }
        }

        protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e)
        {
            string[] s = e.Parameter.Split('|');
            if(s[0] == "MyCallback"){
                ((WebChartControl)sender ).PaletteName = s[1];
            }
        }
    }
}
