import Foundation

// Iniciando módulo de programação orientada a objetos

class Person {
    var nome: String
    var sobrenome: String
    var idade: Int
    var altura: Double
    var fullName: String {
        "\(nome) \(sobrenome)"
    }
    
    func printarNome(_ nome: String, _ sobrenome: String){
        print("\(nome) \(sobrenome)")
    }
    
    
    init(nome: String, sobrenome: String, idade: Int, altura: Double) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
        self.altura = altura
    }
}

var person_1 = Person(nome: "Marcel", sobrenome: "Leite de Farias", idade: 19, altura: 1.72)
person_1.printarNome("Marcel", "Leite de Farias")

    
