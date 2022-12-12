//: [Previous](@previous)

import Foundation


enum Direction {
    case left
    case right
}

protocol ActionVehicle {
    func accelerate()
    func stop()
}

protocol Vehicle {
    func turn(_ direction: Direction)
    var name: String {get set}
    init(initialVehicle: String)
}

//var vehicle = Vehicle() não posso fazer isso

class Bike: ActionVehicle,Vehicle {
    
    var peddling = false
    var brakesApplied = false
    var name: String
    var direction: Direction
    
    required init(initialVehicle: String) {
        name = initialVehicle
        direction = .right
    }
    
    func accelerate() {
        print("acelerar")
        peddling = true
        brakesApplied = false
    }
    
    func stop(){
        print("parar")
        brakesApplied = true
        peddling = false
    }
    
    
    
}

extension Bike {
    func turn(_ direction: Direction) {
        self.direction = direction
        print(direction)
    }
}

var bike = Bike(initialVehicle: "Caloi")
bike.turn(.left)
bike.accelerate()
