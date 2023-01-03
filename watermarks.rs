extern crate image;

use std::path::Path;
use image::{ImageBuffer, RgbImage};

fn main() {
    // Carga la imagen en un buffer de imagen
    let mut image = image::open(&Path::new("input.jpg")).unwrap().to_rgb();

    // Crea una marca de agua como una imagen pequeña con texto
    let mut watermark = ImageBuffer::new(200, 50);
    let text = "Copyright";
    let font = Vec::from(include_bytes!("arial.ttf") as &[u8]);
    let color = image::Rgb([0u8, 0u8, 0u8]); // Negra
    let point_size = 32;
    draw_text(&mut watermark, color, point_size, 0, 0, text, &font).unwrap();

    // Añade la marca de agua a la imagen
    image::imageops::overlay(&mut image, &watermark, 0, 0);

    // Guarda la imagen resultante
    image.save("output.jpg").unwrap();
}

fn draw_text(image: &mut RgbImage, color: image::Rgb<u8>, point_size: u32, x: u32, y: u32, text: &str, font: &[u8]) -> Result<(), String> {
    // Esta función usa la librería freetype para dibujar texto en una imagen.
    // Tendrás que implementarla tú mismo o usar otra librería para hacerlo.
}
