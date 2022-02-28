//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by mac16 on 25/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valorAlturaLbl: UILabel!
    @IBOutlet weak var valorPesoLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAltura(_ sender: UISlider) {
        print(sender.value)
        
        valorAlturaLbl.text = ("\(String(format: "%.2f", sender.value)) cm")
    }
    @IBAction func sliderPeso(_ sender: UISlider) {
        print(sender.value)
        valorPesoLbl.text = ("\(String(format: "%.2f", sender.value)) kg")
    }
    @IBAction func calcularBtn(_ sender: UIButton) {
        print("Calcular")
        performSegue(withIdentifier: "calcularSegue", sender: self)
    }
    
}

