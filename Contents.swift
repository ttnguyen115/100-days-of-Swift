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
    private let model: String
    private let numberOfSeats: Int
    private var currentGear: Bool
    
    init(_ currentGear: Bool) {
        self.model = "Roll Royces"
        self.numberOfSeats = 6
        self.currentGear = currentGear
    }
    
    mutating func changeGear(to isGearUp: Bool) {
        print("Car model is \(self.model) and there are \(self.numberOfSeats) seats")
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

// Checkpoint 7 - classes, inheritance
print("Checkpoint 7 - classes, inheritance");

class Animal {
    private var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        print("something")
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    override func speak() {
        print("bark bark bark")
    }
}

class Cat: Animal {
    private var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    override func speak() {
        print("meow meow moew")
    }
}

let bird = Animal(legs: 2)
let poodle = Dog()
let tamago = Cat(isTame: true)

bird.speak()
poodle.speak()
tamago.speak()
print("------------------------------------------------------------------------------");

// Checkpoint 8 - protocols, extensions
print("Checkpoint 8 - protocols, extensions");
protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var agentName: String { get set }
    func salesSummary()
}

struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var agentName: String
    
    init(numberOfRooms: Int, cost: Int, agentName: String) {
        self.numberOfRooms = numberOfRooms
        self.cost = cost
        self.agentName = agentName
    }
    
    func salesSummary() {
        print("This house costs \(cost) with \(numberOfRooms) rooms and is saled by \(agentName) agency.")
    }
}

struct Office: Building {
    var numberOfRooms: Int
    var cost: Int
    var agentName: String
    
    init(numberOfRooms: Int, cost: Int, agentName: String) {
        self.numberOfRooms = numberOfRooms
        self.cost = cost
        self.agentName = agentName
    }
    
    func salesSummary() {
        print("This office costs \(cost) with \(numberOfRooms) rooms and is saled by \(agentName) agency.")
    }
}

var house = House(numberOfRooms: 4, cost: 500_000, agentName: "Test 1")
var office = Office(numberOfRooms: 6, cost: 2_000_000, agentName: "Test 2")
house.salesSummary()
office.salesSummary()
print("------------------------------------------------------------------------------");

// Checkpoint 9 - optionals, nil coalescing
print("Checkpoint 9 - optionals, nil coalescing");


print("------------------------------------------------------------------------------");
