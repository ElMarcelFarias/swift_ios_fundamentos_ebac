import UIKit
import Foundation

//1) Qual das seguintes atribuições são válidas? R: (V,F,V,V)

var name: String? = "Carlos"
//F var age: Int = nil
var kilometer: Float = 26.4
var lastName: String? = nil

//2) Faça o unwrap com segurança com a constante, `number`  e print com a condição mais legível
var numericalString: String = "Não vai rolar"
var number = Int(numericalString)

if let number = number {
    print(number)
} else {
    print("Não deu não! deu)")
}

let nome: String? = nil
var haveNome = nome ?? "Deu ruim!"

//3) Não vai funcionar, vai retornar um nill pq não é possível transformar uma String em Int

//4)

var viewController = UIViewController()

if let tabBar = viewController.tabBarController?.tabBar {
    print("Aqui tem uma tabBar controller")
} else {
    print("Aqui náo tem uma tabBar controller")
}


// Para complementar conseguimos fazer de uma forma mais segura com guard statement

func hello(name: String?) {
    guard let tester = name else {
        print("não deu certo não")
        return
    }
    
    print("Olá, \(tester)")
}

hello(name: nil)
