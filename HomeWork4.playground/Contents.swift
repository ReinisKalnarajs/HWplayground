import UIKit

/*
 
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 
 */

/*var someStringDictionary = Dictionary<String, String>()

var moreStringIntDictionary = [String: Int]()

var stringDictionary: [String: String] = [:]

stringDictionary = ["name"    : "AM",
                    "age"     : "34",
                    "webLink" : "1a.lv"]*/
let myTeam = "Boys"
var results = [89,123]
var resultsOfGames: [String: String] = [:]
resultsOfGames = ["teamName": "results"]
resultsOfGames["teamName"] = "Los Angeles Lakers"
var firstResult = results.first
var secondResult = results.last
    resultsOfGames["results"]  = "\(firstResult!) : \(secondResult!)"
print("\(myTeam) against \((resultsOfGames["teamName"])!) scored \((resultsOfGames["results"])!)")

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var wallet: [Int] = []

for i in 5...500 {
    wallet.append(i)
}

func calculateCash(walletName funcWallet: [Int]) -> Int {
    var cashSum = 0
    for cashInWallet in funcWallet {
        cashSum += cashInWallet
    }
    return cashSum
}

calculateCash(walletName: wallet)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number a: Int) -> Bool {
    if a % 2 == 0 {
        return true
    }
        return false
}



isEvenNumber(number: 6833)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray (from a: Int, to b: Int) -> [Int] {
    var newArray = [Int]()
    for i in a...b{
    newArray.append(i)
    }
    return newArray
}

var array = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for arrayElement in array{
    if isEvenNumber(number: arrayElement) == true{
        array.remove(at: array.firstIndex(of: arrayElement)!)
    }
}

print(array)
