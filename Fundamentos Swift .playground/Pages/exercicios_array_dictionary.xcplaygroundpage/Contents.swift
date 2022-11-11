//: [Previous](@previous)

import Foundation

//1) - Seguindo este array abaixo, qual valor é o output dessa função? Perâ
var frutas: [String] = ["Maça", "Banana", "Melão", "Pêra"]
var comida = frutas[3]

// 2) - Seguindo o mesmo exercicio acima, agora inclua a fruta Amexa, troque de posição Banana e Melão. No final conte quantas
// frutas tem no novo array

frutas.append("Amexa")

var banana = frutas.firstIndex(of: "Banana")
var melao = frutas.firstIndex(of: "Melão")

if let banana = banana, let melao = melao {
    frutas.swapAt(banana, melao)
    print(frutas)
} else {
    print("null")
}

print(frutas.count)

// 3) - Pensando nesse código abaixo, qual é o tipo de x ? E qual é o valor?

let d = ["john": 23, "james": 24, "vicent": 34, "louis": 29]
//let x = d.sorted{ $0.1 < $1.1 }.map($0.0)
