//: [Previous](@previous)

// Optininals = pode receber um valor ou receber um nulo => ?

import Foundation
import UIKit

var greeting: String = "Hello, playground"
//greeting =  nil não posso colocar nil

var color: UIColor = UIColor.red
//color = nil outra variável que não posso colocar valores nulos, nill*

var objetic: AnyObject = UIColor.red
//objetic = nil outra variável que não posso colocar valores nulos, nill*

var greet: String
var age: Int
var result: Int?

greet = "Hello, playgourd!"
age = 28

result = Int(greet)


class ViewController: UIViewController {
    var label: UILabel?
}

