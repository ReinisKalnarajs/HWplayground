import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

let rate    = 0.01
var period  = 15
var profit  = 0.0
var startDeposit = 500000.0
var deposit = startDeposit
var totalIncome = 0.0

for _ in 1...period{
    profit = rate * deposit
    deposit += profit
}

totalIncome = deposit - startDeposit

print("""
Amount of annual income after \(period) years will be \(profit) Eur.
Amount of total profit after \(period) years will be \(totalIncome) Eur.
My total deposit will be \(deposit) Eur!
""")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var numberArr = [1,3,4,6,8,10,15,16,17]
var newArr: [Int] = []
type(of: numberArr)

var counter = 0

for number in numberArr {
    if number % 2 == 0 {
        newArr += [number]
    }
}

var numbString = ""
for evenNumber in newArr{
    numbString += (String(evenNumber)+" ")
    }

print("My even numbers are : \(numbString)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var i = INT32_MAX
var countInit = 1
for count in 1...i {
    let number = Int.random(in: 0...100000)
    /*Int(i)*/
    if number == 5 {
        countInit = Int(count)
        break
    }
}

print("The number will be 5 after \(countInit) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
let postHeight         = 10
var bugClimbDistance   = 0
let dayClimbDistance   = 2
let nightClimbDistance = -1
var dayCount = 0


while bugClimbDistance < postHeight{
    dayCount += 1
    bugClimbDistance += dayClimbDistance
    if bugClimbDistance < postHeight{
        bugClimbDistance += nightClimbDistance
    }
    
}
print("The bug will spend \(dayCount) days to reach the top of the post")
