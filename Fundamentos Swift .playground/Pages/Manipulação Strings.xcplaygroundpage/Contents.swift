
import Foundation

var greeting = "Hello"
//
//for char in greeting {
//    print(char)
//}
//
//print(greeting.count)


let firstIndex = greeting.startIndex
let firstChar = greeting[firstIndex]
//para pegar o primeiro caracter da String

let lastIndex = greeting.index(before: greeting.endIndex)
let lastChar = greeting[lastIndex]
//para pegar o ultima letra da String, index endIndex

let chooseIndex = greeting.index(greeting.startIndex, offsetBy: 3)
let chooseChar = greeting[chooseIndex]
//para pegar um caracter escolhido pelo offsetby

let variavel = "escrito"
let rawString = #"Teste de rawString \(variavel)."#

let name = "Marcel Leite de Farias"

let spaceIndex = name.firstIndex(of: " ")!
let firstSpaceName = name[name.startIndex..<spaceIndex]
//pegar as Strings que estão antes do primeiro espaço

let lastSpaceName = name[name.index(after: spaceIndex)...]
//pegar as Strings que estão depois do primeiro espaço



print(firstChar)
print(lastChar)
print(chooseChar)
print(rawString)
print(firstSpaceName)
print(lastSpaceName)
