//: [Previous](@previous)

import Foundation


var player: [String] = ["Marcel", "Uchöa", "Denise", "Isabel", "Mayra"] //Array

print(player.isEmpty) //Irá retornar um true or false se estiver vazio
print(player.count) // irá contar a quantidade de itens no array começando do 1


if player.count < 5 {
    print("é menor que 5")
} else {
    print("Não é menor que 5")
}

var firstPlayer = player.first
if let firstPlayer = firstPlayer {
    print(firstPlayer)
}


	
