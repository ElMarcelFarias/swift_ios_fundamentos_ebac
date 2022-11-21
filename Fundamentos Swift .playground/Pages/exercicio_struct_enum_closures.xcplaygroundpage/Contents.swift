//: [Previous](@previous)


//1) - Qual o tipo de x, e o que será printado referente ao valor de x?
var language = "Objc"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()

import Foundation

let d = ["john": 23, "james": 24, "vicent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1}.map{ $0.0 }
// função sorted ordena o array pela maior quantidade de caracteres da string, depois ele percorre no map
//print(x)
	

let nome = ["Marcel": 23, "Jorge": 22]

nome.map{
    print($0.1)
}

//2) -  Criar uma Struct que aceite nome e idade, e printar os valores de saída

struct Person  {
    var nome: String
    var idade: Int
    var peso: Double
    var altura: Double
}

var person = Person(nome: "Marcel Leite de Farias", idade: 19, peso: 53.0, altura: 1.72)

print("Meu nome é: \(person.nome) e minha idade é: \(person.idade)")


//3) - Seguindo o exemplo acima, crie uma stored properties e nela calcule o IMC de uma pessoa.
//     IMC = peso / (altura X altura)

var imc = person.peso / (person.altura * person.altura)
print(imc)

// teste de commit! 
