// Force-unwrapp dificilmente usado, não é recomendado utilizar
// Melhor forma de dar unwrapp é com condicional

import Foundation
import UIKit

var greeting: String
var age: Int
var result: Int?

greeting = "Hello, playgroud"
age = 28
result = Int(greeting)
//result! * 2 forma de não realizar o unwrapp (force-unwrapp)


if let result = result {
    result * 2
} else {
    "Não tem nada!"
}

var optionalString: String? = nil
var haveResult = optionalString ?? "Hey"

if let optionalString = optionalString {
    haveResult = optionalString
} else {
    optionalString = "Hey do if"
}


haveResult += ", Marcel Leite de Farias seu unwrapp deu errado!"

// Duas formas seguras de fazer o unwrapp de optinonals, com condicionais


// Statement Guard !!!

func getPerson(person: String?) {
    guard let name = person else {
        print("No person")
        return
    }
    print("Hello, \(name)")
}

getPerson(person: "Marcel Leite de Farias")

// Formas seguras e feliz de fazer unwrapp seguro e conciente!
// Exemplo de unwrapp com imagem

var imageView = UIImageView()
imageView.image = UIImage(named: "download")

var imageSize = imageView.image?.size

// Mesmo trabalhando com algo concreto como uma imagem, não é recomendado utilizar force-unwrapp
    



