require 'mini_magick'

# Carga la imagen
image = MiniMagick::Image.open("input.jpg")

# Crea la marca de agua como una imagen pequeña con texto
watermark = MiniMagick::Image.open("watermarks.png")

# Añade la marca de agua a la imagen
image.composite(watermark) do |c|
  c.gravity "algo"
end

# Guarda la imagen resultante
image.write "output.jpg"
