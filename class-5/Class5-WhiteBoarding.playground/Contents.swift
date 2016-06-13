//: Playground - noun: a place where people can play

import UIKit


//find palindromes

let thisArr = ["racecar", "mom", "car", "dog", "dad"]

func returnPalindromes(array: [String]) -> [String]
{
    var palindromes = [String]()
    
    for word in array
    {
        let reverse = String(word.characters.reverse())
        if word == reverse {
            palindromes.append(reverse)
        }
    }
    return palindromes
        
}


returnPalindromes(thisArr)


var dictionary1: [Int: String] = [10: "A", 11: "B", 12: "C", 13: "D", 14: "E", 15: "F"]

func base16 (number: Int) -> String {
    var inputValue = number
    var remaindersInverse = [String]()
    var modulo = (inputValue % 16)
    
    while( inputValue > 16) {
        inputValue = Int(inputValue / 16)
        remaindersInverse.insert(String(modulo), atIndex: 0)
        modulo = (inputValue % 16)
    }
    remaindersInverse.insert(String(inputValue), atIndex: 0)
    for (index, element) in remaindersInverse.enumerate() {
        if (Int(element)) > 9 {
            let moduloText = dictionary1[Int(element)!]!
            remaindersInverse[index] = moduloText
        }
    }
    return remaindersInverse.reduce("",combine:{$0 + $1})
}
var example = base16(63933)
print(example)

