//
//  TabViewController.swift
//  proyectoDesarrolloApps
//
//  Created by Jorge on 22/11/23.
//

import UIKit

class TabViewController: UIViewController, UITableViewDataSource {

 
    @IBOutlet weak var table: UITableView!
    
    struct consejos{
        let title: String
        let info: String
    }
    
    let data: [consejos] = [
        consejos(title: "Usa transporte sostenible", info: "Opta por formas de transporte más sostenibles, como caminar, andar en bicicleta, utilizar el transporte público o compartir automóviles. Estas opciones reducen las emisiones de gases contaminantes y fomentan un aire más limpio."),
        consejos(title: "Reduce el uso de vehículos a motor", info: "Si es posible, limita el uso de vehículos a motor. Usa el automóvil solo cuando sea necesario y considera la posibilidad de compartir viajes. Además, elige vehículos más eficientes en términos de combustible y emisiones."),
        consejos(title: "Opta por fuentes de energía limpias", info: "Apoya y promueve el uso de fuentes de energía renovable, como la solar o eólica. En el hogar, considera la posibilidad de utilizar electrodomésticos eficientes energéticamente y participa en programas de eficiencia energética."),
        consejos(title: "No al uso productos contaminantes", info: "Disminuye el uso de productos que generan contaminantes del aire, como aerosoles, productos químicos de limpieza agresivos y pesticidas. Busca alternativas más amigables con el medio ambiente y utiliza productos certificados como \"verdes\" o ecológicos."),
        consejos(title: "Practica la eficiencia energética", info: "Mejora la eficiencia energética en tu hogar y en tus actividades diarias. Apaga los electrodomésticos cuando no los estés utilizando, utiliza bombillas LED, y aísla tu hogar adecuadamente para reducir la necesidad de calefacción o refrigeración."),
        consejos(title: "Actividades reforestación", info: "Las áreas verdes y los bosques actúan como pulmones naturales que filtran el aire y absorben contaminantes. Participa en actividades de reforestación o apoya organizaciones que se dediquen a la conservación de áreas verdes.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let consejos = data[indexPath.row]
            let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
            cell.label.text = consejos.title
            cell.label2.text = consejos.info
            return cell
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


