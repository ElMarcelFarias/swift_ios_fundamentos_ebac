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
	
