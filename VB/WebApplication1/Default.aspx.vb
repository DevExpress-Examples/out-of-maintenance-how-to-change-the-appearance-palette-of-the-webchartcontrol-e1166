Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.XtraCharts.Native
Imports DevExpress.XtraCharts
Imports System.Drawing
Imports System.IO
Imports DevExpress.XtraCharts.Web

Namespace WebApplication1
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Public Shared Function CreateEditorImage(ByVal palette As Palette) As System.Drawing.Image
			Const imageSize As Integer = 10
			Dim image As Bitmap = Nothing
			Try
				image = New Bitmap(palette.Count * (imageSize + 1) - 1, imageSize)
				Using g As Graphics = Graphics.FromImage(image)
					Dim rect As New Rectangle(Point.Empty, New Size(imageSize, imageSize))
					Dim i As Integer = 0
					Do While i < palette.Count
						Using brush As Brush = New SolidBrush(palette(i).Color)
							g.FillRectangle(brush, rect)
						End Using
						Dim penRect As Rectangle = rect
						penRect.Width -= 1
						penRect.Height -= 1
						Using pen As New Pen(Color.Gray)
							g.DrawRectangle(pen, penRect)
						End Using
						i += 1
						rect.X += 11
					Loop
				End Using
			Catch
				If image IsNot Nothing Then
					image.Dispose()
					image = Nothing
				End If
			End Try
			Return image
		End Function

		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
			Dim names() As String = WebChartControl1.PaletteRepository.PaletteNames
			Dim images(names.Length - 1) As System.Drawing.Image
			Dim imageSize As Size = Size.Empty
			ASPxComboBox1.Items.Clear()
			For i As Integer = 0 To names.Length - 1
				Dim name As String = names(i)
				If (Not File.Exists(Server.MapPath("Images") & "\" & name & ".bmp")) Then
					Dim palette As Palette = WebChartControl1.PaletteRepository(name)
					Dim image As System.Drawing.Image = CreateEditorImage(palette)
					Dim path As String = Server.MapPath("Images") & "\" & name & ".bmp"
					image.Save(path, System.Drawing.Imaging.ImageFormat.Bmp)
				Else
					ASPxComboBox1.Items.Add(name)
					ASPxComboBox1.Items(i).ImageUrl = "~/Images" & "/" & name & ".bmp"
				End If
			Next i
		End Sub

		Protected Sub WebChartControl1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.XtraCharts.Web.CustomCallbackEventArgs)
			Dim s() As String = e.Parameter.Split("|"c)
			If s(0) = "MyCallback" Then
				CType(sender, WebChartControl).PaletteName = s(1)
			End If
		End Sub
	End Class
End Namespace
