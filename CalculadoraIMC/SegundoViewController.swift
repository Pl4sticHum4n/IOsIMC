//
//  SegundoViewController.swift
//  CalculadoraIMC
//
//  Created by mac16 on 25/02/22.
//

import UIKit

class SegundoViewController: UIViewController {

    var valorIMC: String?
    var mensaje: String?
    var color: UIColor?
    var imagen: String?
    
        
    @IBOutlet weak var valorIMCLabel: UILabel!
    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var mensajeLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(valorIMC!)
        print(mensaje!)
        valorIMCLabel.text = valorIMC
        mensajeLbl.text = mensaje
        imagenView.image = UIImage(named: imagen!)
        self.view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func calcularNuevo(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
