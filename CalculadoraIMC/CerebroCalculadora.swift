//
//  CerebroCalculadora.swift
//  CalculadoraIMC
//
//  Created by mac16 on 01/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora {
    // Objeto imc
    var imc: IMC?
    
    mutating func calcularIMC(peso: Float, altura: Float){
        print(peso)
        print(altura)
        let valorIMC=peso/(altura * altura)
        print(valorIMC)
        if valorIMC < 18.5 {
            imc = IMC(valor: valorIMC, mensaje: "Estàs bajo de peso", color: UIColor.blue, imagen: "bajoPeso")
        } else if valorIMC < 24.9 && valorIMC > 18.4 {
            imc = IMC(valor: valorIMC, mensaje: "Tu peso es normal", color: UIColor.green, imagen: "normalPeso")
        } else if valorIMC < 29.9 && valorIMC > 24.8{
            imc = IMC(valor: valorIMC, mensaje: "Tienes sobrepeso", color: UIColor.systemRed, imagen: "sobrePeso")
        } else if valorIMC > 29.8 {
            imc = IMC(valor: valorIMC, mensaje: "Padeces obesidad mòrbida", color: UIColor.darkGray, imagen: "obesidad")
        }
    }
    
    func retornarValorStringIMC() -> String {
        let imcCon2Decimales = String(format: "%.2f", imc?.valor ?? 0.0)
        return imcCon2Decimales
    }
    
    func darAviso() -> String {
        return imc?.mensaje ?? "No hay mensaje"
    }
    
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.blue
    }
    
    func retornarImagen() -> String {
        return imc?.imagen ?? "1934400"
    }
}
