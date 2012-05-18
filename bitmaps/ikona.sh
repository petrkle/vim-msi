convert vim.png -fill transparent \
          \( -clone 0 -fill transparent -resize 16x16 \) \
          \( -clone 0 -fill transparent -resize 32x32 \) \
          \( -clone 0 -fill transparent -resize 48x48 \) \
          \( -clone 0 -fill transparent -resize 64x64 \) \
          \( -clone 0 -fill transparent -resize 128x128 \) \
          -delete 0 -alpha on -colors 16000 vim.ico
