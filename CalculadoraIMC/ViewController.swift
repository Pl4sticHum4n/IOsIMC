//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by mac16 on 25/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var cerebroCalculadora = CerebroCalculadora()
    
    var peso: Float = 75.0
    var altura: Float = 1.6
    var imc: Double = 0.0

    @IBOutlet weak var valorAlturaLbl: UILabel!
    @IBOutlet weak var valorPesoLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAltura(_ sender: UISlider) {
        print(sender.value)
        valorAlturaLbl.text = ("\(String(format: "%.2f", sender.value)) cm")
        // Guardar los valores en las variables
        altura=Float(sender.value) / 100
    }
    @IBAction func sliderPeso(_ sender: UISlider) {
        print(sender.value)
        valorPesoLbl.text = ("\(String(format: "%.2f", sender.value)) kg")
        peso = Float(sender.value)
    }
    @IBAction func calcularBtn(_ sender: UIButton) {
        print(peso)
        print(altura)
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura)
            
        performSegue(withIdentifier: "calcularSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objetoDestino = segue.destination as! SegundoViewController
        objetoDestino.valorIMC = cerebroCalculadora.retornarValorStringIMC()
        objetoDestino.mensaje = cerebroCalculadora.darAviso()
        objetoDestino.color = cerebroCalculadora.retornarColor()
        objetoDestino.imagen = cerebroCalculadora.retornarImagen()
    }
}

