vim.msi: vim.wixobj bitmaps/*.bmp bitmaps/*.ico
	light.exe -ext WixUIExtension vim.wixobj
vim.wixobj: vim.wxs files.wxs componets.wxs minimalui.wxs
	candle.exe vim.wxs
clean:
	del /F /Q vim.wixobj vim.wixpdb vim.msi

#heat dir vim73 -var var.vimDir -gg -ke -sfrag -out files.wxs
