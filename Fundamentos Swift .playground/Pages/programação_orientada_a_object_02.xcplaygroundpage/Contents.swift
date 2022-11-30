import Foundation

//  Encapsulamento
/// esconder dentro da classe utilizamos private, com o private só conseguimos utilizar no mesmo contexto da classe, não podendo ser utilizado fora da classe.
/// fileprivate é utilizavel apenas no mesmo arquivo, se tentarmos utilizar a variavel com o fileprivate em outro arquivo não iriamos conseguir.
/// internal é o nivel de acesso padrão, é um default.
/// public é acessivel de qualquer lugar que importe a classe.
/// temos o open, não muito utilizado, semelhante ao public

class Person {
    fileprivate var nome: String
    var sobrenome: String
    var idade: Int
    private var altura: Double
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

var person01 = Person(nome: "Marcel", sobrenome: "Leite de Farias", idade: 18, altura: 1.72)
//print(person01.altura)

// Exercicio na prática

class MyAccount: Person {
    private var balance: Double = 0.0
    
    func Getdeposito(value: Double) -> Double {
        return balance + value
    }
    
    func setBalance (value: Double) {
        balance = value
    }
    
    
    
}

var NubankAccount = MyAccount(nome: "Mayra", sobrenome: "Luiza de Sant'Anna", idade: 18, altura: 1.62)


// Falha de segurança NubankAccount.saldo = 10000.00
// Então temos que utilizar o nivel private para o saldo.

// Forma correta de inicializar o saldo, depois realizar o depósito

NubankAccount.setBalance(value: 12.00)
var myValue = NubankAccount.Getdeposito(value: 2000.00)
print(myValue)

