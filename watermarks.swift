import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Carga la imagen en la vista de imagen
        imageView.image = UIImage(named: "input.jpg")

        // Crea una etiqueta para la marca de agua
        let watermarkLabel = UILabel()
        watermarkLabel.text = "Copyright"
        watermarkLabel.font = UIFont.systemFont(ofSize: 32)
        watermarkLabel.textColor = .black
        watermarkLabel.sizeToFit()

        // Añade la etiqueta como una subvista de la vista de imagen
        imageView.addSubview(watermarkLabel)

        // Posiciona la etiqueta en la esquina inferior derecha de la vista de imagen
        watermarkLabel.translatesAutoresizingMaskIntoConstraints = false
        watermarkLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -8).isActive = true
        watermarkLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -8).isActive = true
    }
}
