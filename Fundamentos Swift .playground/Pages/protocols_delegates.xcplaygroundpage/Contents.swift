//: [Previous](@previous)

import Foundation


enum Direction {
    case left
    case right
}

protocol Vehicle {
    func accelerate()
    func stop()
    func turn(_ direction: Direction)
}

//var vehicle = Vehicle() não posso fazer isso

class Bike: Vehicle {
    
    var peddling = false
    var brakesApplied = false
    
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

var bike = Bike()
bike.accelerate()
