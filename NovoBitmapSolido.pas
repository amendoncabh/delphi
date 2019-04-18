procedure NovoBitmapSolido(Width, Height: Word; Color: TColor; const FileName: TFileName);
var
  bmp: TBitmap;
begin
 bmp := TBitmap.Create;

 try
   bmp.Width := Width;
   bmp.Height := Height;
   bmp.PixelFormat := pf24bit;

   bmp.Canvas.Brush.Color := Color;
   bmp.Canvas.FillRect(Rect(0, 0, Width, Height));

   bmp.SaveToFile(FileName);
 finally

	bmp.Free;
 end;
end;