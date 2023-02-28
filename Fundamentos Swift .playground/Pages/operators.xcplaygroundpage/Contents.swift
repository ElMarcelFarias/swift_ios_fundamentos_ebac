//: [Previous](@previous)

/*
import Foundation

var greeting = "Hello, playground"

var count : Double = 12
var saldo : Double = 7
var result : Bool


var resulto = saldo > count
                    		
var resultTrue : Bool = true
var resultFalse : Bool = false

result = resultTrue != resultFalse
result = count != count


 var n1 = 10
var n2 = 20

print(n1 + n2)

print("Let é uma constraint, uma constante então não é mutável, já var é mutável")

var nome = "Marcel Leite de Farias"

print("A melhor tipagem para texto é a String, exemplo: Meu nome é " + nome)


func fullName(_ first: String, _ last: String) {
    print("Meu primeiro nome é \(first), meu segundo nome é \(last)")
}

fullName("Marcel", "Leite de Farias")
 */



/*func calcIMC (_ altura: Double, _ peso: Double) -> Double {
    return peso / (altura * altura)
}*/

func calcIMC(_ altura: Double, _ peso:Double) -> Double{
    return peso / (altura * altura)
}

var imc = calcIMC(1.72, 55)
print(imc)


var greeting = "hello "
var i = 0

for char in greeting {
    i = i + 1;
    print(char)
}
print("Quantidades de vezes que entrou dentro do for -> \(i)")

print(greeting.count)

let index = greeting.startIndex // função que pega a primeira letra da palavra
var char = greeting[index]


var lastIndex = greeting.index(greeting.startIndex, offsetBy: 4) //função que pega a última letra da palavra
var lastChar = greeting[lastIndex]


print(char)
print(lastChar)



