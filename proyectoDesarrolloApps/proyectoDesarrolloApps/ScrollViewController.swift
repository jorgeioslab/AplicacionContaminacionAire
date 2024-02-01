//
//  ScrollViewController.swift
//  proyectoDesarrolloApps
//
//  Created by Jorge on 23/11/23.
//

import UIKit

class ScrollViewController: UIViewController {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupScrollView()
    }
    
    
    func setupScrollView() {
            let stackView = UIStackView()
            stackView.axis = .vertical

            // Agrega tus imágenes al stackView
            for imageName in ["lunes", "martes", "miercoles","jueves","viernes"] {
                if let image = UIImage(named: imageName) {
                    let imageView = UIImageView(image: image)
                    imageView.contentMode = .scaleAspectFit
                    imageView.layer.cornerRadius = 20 // Ajusta el radio según tus preferencias
                    imageView.layer.masksToBounds = true
                    stackView.addArrangedSubview(imageView)
                    
                    // Ajusta la altura de las imágenes según tus preferencias
                    imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
                }
            }

            // Agrega el stackView al scrollView
            scrollView.addSubview(stackView)

            // Configura las restricciones para el stackView
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
            ])

            // Ajusta la posición y tamaño de las imágenes
            for case let imageView as UIImageView in stackView.arrangedSubviews {
                imageView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    imageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
                    imageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
                ])
            }

            // Habilita el desplazamiento en el UIScrollView
            scrollView.isScrollEnabled = true
            scrollView.contentSize = CGSize(width: scrollView.frame.width, height: CGFloat(stackView.arrangedSubviews.count) * 200) // Ajusta el valor 200 según la altura de tus imágenes
            scrollView.bounces = true
        }

}
