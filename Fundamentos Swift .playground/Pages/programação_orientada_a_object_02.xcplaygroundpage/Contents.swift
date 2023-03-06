import Foundation
/// DESCOMENTAR OS PRINTS PARA OS TESTES DOS EXERCICIOS



//  Encapsulamento Aula 1)
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
//print(myValue)





//  Polimorfismo Aula 2)
/// poder alterar o funcionamento de um método de outra classe
/// 1-Polimorfismo em tempo de compilação e polimorfismo em tempo de execução
/// Bem relacionado a herança

// -> 1)
func addNums(a: Int, b: Int) -> Int {
    return a + b
}

func addNums(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

//print(addNums(a: 2, b: 2))
//print(addNums(a: 2, b: 2, c: 10))

class Animal {
    func makeNoise() {
        //print("durrrr")
    }
}

class Cat: Animal {
    override func makeNoise() {
        //print("miauu")
    }
}

class Dog: Animal {
    override func makeNoise() {
        //print("Au au au")
    }
}

var animal: Animal = Cat()
//animal.makeNoise()

animal = Dog()
//animal.makeNoise()

animal = Animal()
//animal.makeNoise()


//  Type Casting Aula 3)
/// Fortemente tipado

class Animal2 {
    func makeNoise() {
        //print("durrrr")
    }
}

class Cat2: Animal2 {
    override func makeNoise() {
        //print("miauu")
    }
}

class Dog2: Animal2 {
    override func makeNoise() {
        //print("Au au au")
    }
}

let pets = [Dog2(), Cat2(), Cat2(), Dog2()]

// pode retornar um optional, isso é type casting, forcar o tipo dela
// forma mais segura


for pet in pets {
    /*if let dog = pet as? Dog2 {
        dog.makeNoise()
    }(*/
     
    switch pet {
        case let dog as Dog2:
            dog.makeNoise()
        case let cat as Cat2:
            cat.makeNoise()
        default:
             break
    }
    
    
}
            

//  Extension Aula 04)
/// Organizar melhor o código,  caso não tenha acesso ao código original da classe
/// caso a classe não tenha um nivel private


class Person2 {
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
    
    deinit{
        print("\(nome) is removed")
    }
}

extension Person2 {
    func getIdade() -> Int {
        return idade
    }
}

var person02_1 = Person2(nome: "Marcel", sobrenome: "Leite de Farias", idade: 19, altura: 1.72)
print(person02_1.getIdade())

extension String {
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
    
    var lenght: Int {
        get {
            self.count
        }
    }
    
}

var email = "marcel.leitefarias@gmail.com"
let newString = "the old string".replace(target: "old", withString: "new")
print(newString)
print(email.lenght)

var contactMeU: [String: String] = [
    "email": "marcel.leitefarias@gmail.com",
    "linkedin": "https://www.linkedin.com/in/marcel-leite-de-farias-38b62b220/",
    "whatssap": "+55 47 99928-0278"
]

//func contactMe() -> [String: String] {
//
//    return  [
//        "email": "marcel.leitefarias@gmail.com",
//        "linkedin": "https://www.linkedin.com/in/marcel-leite-de-farias-38b62b220/",
//        "whatssap": "+55 47 99928-0278"
//    ]
//}

//var contact = contactMe()

for (key,value) in contactMeU {
    print("\(key) => \(value)")
}

// Deinit linha 166

