import UIKit


// Checkpoint 1 - variables, constants, strings, and numbers, booleans, string interpolation.
print("Checkpoint 1 - variables, constants, strings, and numbers, booleans, string interpolation.");
let temperatureC = 21.0
let temperatureF = temperatureC * 9 / 5 + 32;
let firstCheckpointMessage = "Checkpoint 1: Celsius is \(temperatureC)°C and Fahrenheit is \(temperatureF)°F"
print(firstCheckpointMessage);
print("------------------------------------------------------------------------------");

// Checkpoint 2 - Arrays, dictionaries, sets, enums, type annotations.
print("Checkpoint 2 - Arrays, dictionaries, sets, enums, type annotations.");
let animals: [String] = ["cat", "dog", "bird", "ant", "elephant", "cat"]
let uniqueAnimals: Set<String> = Set(animals);
let secondCheckpointMessage = "Checkpoint 2: There are \(animals.count) items in animals array and \(uniqueAnimals.count) unique animals."
print(secondCheckpointMessage)
print("------------------------------------------------------------------------------");

// Checkpoint 3 - if, switch, the ternary operator, loops
print("Checkpoint 3 - if, switch, the ternary operator, loops -- commented cause of printing many LOCs");
//for i in 1...100 {
//    let result : String
//
//    if i.isMultiple(of: 15) {
//        result = "FizzBuzz"
//    } else if i.isMultiple(of: 3) {
//        result = "Fizz"
//    } else if i.isMultiple(of: 5) {
//        result = "Buzz"
//    } else {
//        result = String(i)
//    }
//
//    print(result)
//}
print("------------------------------------------------------------------------------");

// Checkpoint 4 - functions, parameters, and return values default values, throwing functions
print("Checkpoint 4 - functions, parameters, and return values default values, throwing functions");

enum SquareRootError: Error {
    case OutOfBound, NoRoot
}

func squareRoot(_ number: Int) throws -> Int {
    var result: Int = 0;
    var hasResult: Bool = false;
    
    if number < 1 || number > 10_000 {
        throw SquareRootError.OutOfBound
    }
    for i in 1...100 {
        if i * i == number {
            result = i;
            hasResult = true;
            break;
        }
    }
    if !hasResult {
        throw SquareRootError.NoRoot
    }
    
    return result
}

do {
    let resultValue = try squareRoot(100)
    print(resultValue)
} catch SquareRootError.NoRoot {
    print("No Root")
} catch SquareRootError.OutOfBound {
    print("Out of bounnds")
} catch {
    print("Something gone wrong!")
}
print("------------------------------------------------------------------------------");

// Checkpoint 5 - closures, passing functions into functions
print("Checkpoint 5 - closures, passing functions into functions");
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let returnedArray: [()] = luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted { $0 < $1 }
    .map { print("\($0) is a lucky number") }
print("------------------------------------------------------------------------------");

// Checkpoint 6 - structs, computed properties, property observers, access control, static properties and methods
print("Checkpoint 6 - structs, computed properties, property observers, access control, static properties and methods");
struct Car {
    static private let model = "Kia"
    static private let numberOfSeats = 6
    private var currentGear: Bool
    
    init(_ currentGear: Bool) {
        self.currentGear = currentGear
    }
    
    mutating func changeGear(to isGearUp: Bool) {
        print("Car model is \(Car.model) and there are \(Car.numberOfSeats) seats")
        if isGearUp {
            self.currentGear = true
        } else {
            self.currentGear = false
        }
    }
}
var kia = Car(true)
print(kia.self)
kia.changeGear(to: false)
print(kia.self)
print("------------------------------------------------------------------------------");