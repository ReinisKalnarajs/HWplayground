import UIKit


/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var Number1: Float = 5.36
var Number2: Float = 57.34
var Sum: Double = Double(Number2 + Number1)
print("Sum of number 1 and number 2 is \(Sum).")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

var numberOne: Int = 15
var numberTwo: Int = 10
let divResult: Int = numberOne / numberTwo
let divRemain: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divResult) the remainder is \(divRemain).")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var quantity: Int = 12
var price: Int = 1

if quantity < 5 {
    price = 1000
} else if quantity < 10 {
    price = 900
} else {
    price = 850
}
var totalSum = quantity * price
print("\(quantity) new MacBook Pro computers with the price of \(price) EUR, will cost you \(totalSum) EUR")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String = "33a"
var converter = Int(userInputAge)

if converter == nil {
 print("Can't convert string to integer.")
} else {
    print("String converted to integer successfully: Int(userInputAge) = \(converter!).")
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
var dateComponents = DateComponents()
dateComponents.year = 1999
dateComponents.month = 7
dateComponents.day = 14
dateComponents.hour = 15
dateComponents.minute = 34


let userCalendar = Calendar(identifier: .gregorian)
let birthDate = userCalendar.date(from: dateComponents)

let currentDate = Date()

let totalYears = Calendar.current.dateComponents ([.year], from: birthDate!, to: currentDate).year
let totalDays = Calendar.current.dateComponents ([.day], from: birthDate!, to: currentDate).day
let totalMonths = Calendar.current.dateComponents ([.month], from: birthDate!, to: currentDate).month

print("Total years: \(totalYears!), total months: \(totalMonths!), total days: \(totalDays!).")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

var monthOfBirth = dateComponents.month!

switch monthOfBirth {
case 1...3:
print("I was born in the 1st quarter.")
case 4...6:
print("I was born in the 2nd quarter.")
case 7...9:
print("I was born in the 3rd quarter.")
case 10...12:
print("I was born in the 4th quarter.")
default:
    print("Couldn't identify month of birth.")
    break
}
