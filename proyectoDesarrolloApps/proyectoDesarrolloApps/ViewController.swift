//
//  ViewController.swift
//  proyectoDesarrolloApps
//
//  Created by Jorge on 22/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var airQualityLabel: UILabel!
    
    @IBOutlet weak var imagen2: UIImageView!
    
    @IBOutlet weak var imagen3: UIImageView!
    
    @IBOutlet weak var imagen4: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        airQualityLabel.text = "Calidad del aire en Mexico"
    }
}



