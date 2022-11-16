//: [Previous](@previous)

import Foundation

//Closures like lambida função anônima

//var multiplyAnomyous: (Int,Int) -> Int

var multiplyAnomyous = { (a: Int, b: Int) -> Int in
    return a * b
}
	
multiplyAnomyous = { (a: Int, b: Int) -> Int in a * b } //vários exemplos de closures, simplificando funções, ou func anônimas

multiplyAnomyous = { (a, b) in a * b }

multiplyAnomyous = { $0 * $1 }

let result = multiplyAnomyous(12,2)
//print(result)

var players: [String] = ["Marcel","Mayra","Luan"] //array
let stringLong = players.sorted {
    $0.count > $1.count // A string que for maior ele coloca na frente no array
}

//print(stringLong)
 
/*
players.forEach{
    print($0)
}
 */

let mapName = players.map { $0.uppercased() } //map percorre o array e estamos utilizando função nativa uppercased para deixar MAIUS
//print(mapName)

let filterName = players.filter {
    $0.count > 5
}

//print(filterName)


//Struct
//Structs são tipos que podem armazenar propriedade e definir ações e comportamentos

struct  User {
    let firstName: String
    let lastName: String
    let age: Int
    var email: String
    var isActive: Bool
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func printFullName() {
        print("\(firstName) \(lastName)")
    }
    
}

var user = User(firstName: "Marcel", lastName: "Leite de Farias", age: 18, email: "marcel.leitefarias@gmail.com", isActive: false)
print(user.fullName)
print(user.email)
user.printFullName()

user.email = "mudandoemail@gmail.com"
print(user.email)
