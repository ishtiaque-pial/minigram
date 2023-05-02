//
//  ViewController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 8/4/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.functionWithoutParamerAndReturnType()
        self.functionWithSingleParam(name: "Function!")
       // self.functionWithTwoParams("John", age: 25)
        self.functionWithTwoParams("John", label2: 30)
        let age: Int = self.functionWithReturnType(name: "John")
        print("Age of John = \(age)")
        let (min, max) = self.functionWithTwoReturnType()
        print("min = \(min), max= \(max)")
        
        
        var numbers = [5,1,3,8,4,6,2,8]
        // numbers.sort()
       // numbers.sort
        
        numbers.sort(by: { $0 < $1 })
        
        for number in numbers {
           // print(number)
        }
        
        print(numbers.filter { number in
            return number % 2 == 1
        })
        
        //print(isOdd(value: 3))
        
        // self.oddChecker(number: 3, check: isOdd(value:))
        
        // Array , Set , Dictionary
        
        
        
        let fruits = [
            "Apple",
            "Banana",
            "Mango",
            "Orange"
       ]
        
        let str = "hello world"
        print("str length = \(str.count)")
        for character in str {
            print(character)
        }
        
        var fruitSet = Set<String> ()
        fruitSet.insert("Apple")
        fruitSet.insert("Banana")
        fruitSet.insert("Mango")
        fruitSet.insert("Orange")
        
        var fruitSet2 = Set<String> ()
        fruitSet2.insert("Pineapple")
        
        print(fruits[2])
        print("Set = \(fruitSet)")
        print("Set = \(fruitSet.union(fruitSet2))")
        
        // Dictionary
        
        let fruitBasket: [String: Int] = [
            "Apple": 10,
            "Banana": 15,
            "Mango": 50,
            "Orange": 25
        ]
        
        let fruitBasket2: [String: Int] = [
            "Pineappe": 10,
            "Coconut": 15
        ]
        
        print("fruitBasket => \(fruitBasket)")
        print("How many mangoes? = \(fruitBasket["Mango"] ?? 0)")
        
        let fruitTruck: [String: [[String: Int]]] = [
            "100 Ton Truck": [fruitBasket, fruitBasket2]
        ]
        print("FruitTruck = \(fruitTruck)")
        
        for item in fruits {
            print("array item -> \(item)")
        }
        
        for item in fruitSet {
            print("set item -> \(item)")
        }
        
        for (key, value) in fruitBasket {
            print("Dictionary item -> \(key) => \(value)")
        }
        
        let keys = fruitBasket.keys
        for key in keys {
            print(key)
        }
        
        fruitBasket.filter { element in
            if element.value == 50 {
                return true
            }
            return false
        }
        
        for (truckKey, truckValue) in fruitTruck {
            print("truckKey = \(truckKey), truckValue = \(truckValue)")
            for busket in truckValue {
                print("busket in \(truckKey) => \(busket)")
                for (key, value) in busket {
                    print("Dictionary item -> \(key) => \(value)")
                }
            }
        }
        
        
        print(fruits)
        
    }
    
    
    func isOdd (value: Int) -> Void {
        if value % 2 == 1 {
            print("\(value) is odd.")
        } else {
            print("\(value) is even.")
        }
    }
 
    
    func compare (number1: Int, number2: Int) -> Bool {
        return number1 > number2
    }
    
    func contentsOfClass2 () {
        let varWithEmoji = "😀😀😀"
        let number1: Int = 10
        var number2: Int = 12
        var mString1: String = "Hello"
        let mString2: String = "World"
        
        let `class` = "Abc"
        let number3: Int = 10
        
        number2 = number2 + number1
        print("number2 (after +) = \(number2)")
        number2 = number2 - 5
        print("number2 (after -) = \(number2)")
        number2 = number2 * 3
        print("number2 (after *) = \(number2)")
        number2 = number2 / 5
        print("number2 (after /) = \(number2)")
        number2 = number2 % 3
        print("number2 (after %) = \(number2)")
        
        let mString3 = mString1 + " " + mString2
        print(mString3)
        
        print(varWithEmoji)
        
        let isNumber1GreaterThanNumber2 = number1 > number2
        
        if isNumber1GreaterThanNumber2 {
            number2 += 5
            print("number1 is smaller than number2")
        } else {
            print("number1 is greater than or equal to number2")
        }
        
        if number1 != number2 {
            print("number1 and number2 are not equal.")
        }
        
        if (mString1 == mString2) && (number1 == number2) {
            print("equal")
        } else {
            print("not equal")
        }
        
        let _ = number1 > number2 ? number1 : number2
       // print(variable3)
        
        let fruits = ["Apple", "Banana", "Mango"]
        for fruit in fruits {
            print(fruit)
        }
    }
    
    func functionWithoutParamerAndReturnType () {
        print("functionWithoutParamerAndReturnType")
    }
    
   
    func functionWithSingleParam (name: String) {
        print("Hello, \(name)")
    }
    
    func functionWithTwoParams (_ name: String, label2 age: Int) {
        print("Hello, \(name). Your age is \(age) years.")
    }
    
    
    func functionWithReturnType (name: String) -> Int {
        if name == "John" {
            return 25
        }
        return 0
    }
    
    func functionWithTwoReturnType () -> (Int, Int) {
        
        let numbers = [1,2,3,4,5]
        let min = numbers[0]
        let max = numbers[4]
        return (min, max)
    }
    
    // Closure

}

