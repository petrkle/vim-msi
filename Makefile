PRODUCT=Vim
VERSION=8.0.2
SRC=vim

$(SRC)-$(VERSION).msi: $(SRC).wixobj bitmaps/*.jpg
	light.exe -sacl -nologo -ext WixUIExtension -ext WixUtilExtension -out $(SRC)-$(VERSION).msi $(SRC).wixobj

$(SRC).wixobj: $(SRC).wxs files.wxs components.wxs minimalui.wxs
	candle.exe -nologo -dProductVersion=$(VERSION) -dProductName=$(PRODUCT) -dSRC=$(SRC) $(SRC).wxs

clean:
	del /F /Q *.wixobj *.wixpdb *.msi components.wxs files.wxs

install:
	msiexec /qr /i $(SRC)-$(VERSION).msi

uninstall:
	msiexec /qr /x $(SRC)-$(VERSION).msi

test:
	smoke -nologo $(SRC)-$(VERSION).msi

components.wxs: components.xsl
	heat dir $(SRC) -var var.SRC -indent 1 -sw5150 -nologo -ag -suid -ke -sfrag -t components.xsl -out components.wxs

files.wxs: files.xsl shortcuts.xsl
	heat dir $(SRC) -var var.SRC -indent 1 -sw5150 -nologo -ag -suid -ke -sfrag -t files.xsl -t shortcuts.xsl -t path.xsl -out files.wxs
