//: [Previous](@previous)

import Foundation

// acessando elementos de um array

var player: [String] = ["Marcel", "Uchöa", "Denise", "Isabel", "Mayra"] //Array

print(player.isEmpty) //Irá retornar um true or false se estiver vazio
print(player.count) // irá contar a quantidade de itens no array começando do 1


if player.count < 5 {
    print("é menor que 5")
} else {
    print("Não é menor que 5")
}

// Pegando o primeiro player e fazendo o unwrapp seguro da váriavel OR .min()
var firstPlayer = player.first
if let firstPlayer = firstPlayer {
    print("Primeiro jogador: ", firstPlayer)
}

// Pegando o último player e fazendo o unwrapp seguro da váriavel OR .max()
var lastPlayer = player.last
if let lastPlayer = lastPlayer {
    print("Último jogador: ", lastPlayer)
}

print([1,2,3].first!)
print([3,2,1].last!)

firstPlayer = player[0]

var numberPlayerSlice = player[1...3]
var hasPlayer = player.contains("Marcel")
	





// Adicionando elementos no  Array

player.append("José")
player += ["Carlos"]
player.insert("Claudia", at: 2)






// Removendo elementos do array

var removePlayerLast = player.removeLast() // Removendo o último registro do array
var removePlayerFirst = player.removeFirst() // Removendo o último registro do array

player.remove(at: 3) // Removendo um registro que está no index 3

// simulando uma situação real e unwrapp

var getIndexPlayer = player.firstIndex(of: "Denise")
if let getIndexPlayer = getIndexPlayer {
    player.remove(at: getIndexPlayer)
}

// Update nos registros do array

var car: [String] = ["toyota", "audi","bmw"]

car[1] = "Tesla"
car[0...2] = ["car1", "car2","car3"]
print(car)





// Trocando posição dos registros de um array



print(player) // Array antes


var movPlayer = player.remove(at: 1)
player.insert(movPlayer, at: 0)

// outra maneira

player.swapAt(2, 3)

print(player) // Array depois


// Simulando uma situação real

var getFirstPlayerToSwap = player.firstIndex(of: "Marcel")
var getOtherPlayerToSwap = player.firstIndex(of: "Mayra")


if let getFirstPlayerToSwap = getFirstPlayerToSwap, let getOtherPlayerToSwap = getOtherPlayerToSwap {
    player.swapAt(getFirstPlayerToSwap, getOtherPlayerToSwap)
}
 
player.sort() // ordenando a matriz

for player in player {
    print(player)
}
