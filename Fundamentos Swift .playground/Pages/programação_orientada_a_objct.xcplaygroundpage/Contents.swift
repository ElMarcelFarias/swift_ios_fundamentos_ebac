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



//Utilizando herança da class Person

class Student: Person {
    
    var grade: Double
    var course: String
    
    init(grade: Double, course: String, nome: String, sobrenome: String, idade: Int, altura: Double) {
        self.grade = grade
        self.course = course
        super.init(nome: nome, sobrenome: sobrenome, idade: idade, altura: altura)
    }
    
    convenience init(grade: Double, course: String) {
        self.init(grade: grade, course: course, nome: "Marcel", sobrenome: "Leite de Farias", idade: 18, altura: 1.72)
    }
    
    func getGrade() -> Double{
        return grade
    }
}

var student01 = Student(grade: 10.0, course: "Análise e desenvolvimento de sistemas", nome: "Marcel", sobrenome: "Leite de Farias",                     idade: 19, altura: 1.72)
var student02 = Student.init(grade: 8.9, course: "Engenharia de Software")

student01.fullName
student02.fullName

student01.getGrade()
student02.getGrade()


    
