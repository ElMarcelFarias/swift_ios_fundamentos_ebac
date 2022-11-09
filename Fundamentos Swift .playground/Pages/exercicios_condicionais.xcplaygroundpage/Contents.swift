//: [Previous](@previous)

import Foundation


// 1) Se a seguinte declaração fosse chamada, qual seria o resultado? print(allow)

var state = true

if state {
    print("Allow, access")
} else {
    print("Deny access")
}

// 2) crie um loop e use condições para saber se o número é par ou ímpar, dado a essa variavel:

var arrayNumber: Array = [1,2,3,4,5,6,7,8,9,10]


for i in arrayNumber {
    if(i % 2 == 0){
        print("O número é par: \(i)")
    } else {
        print("O número é impar: \(i)")
    }
}
 


var count = arrayNumber.count + 1
var x = 0

while x < count {
    if(x % 2 == 0){
        print("O número é par: \(x)")
    } else {
        print("O número é impar: \(x)")
    }
    x = x + 1
}
 
 


		


