//var numbers = [20, 19, 7, 12]
//let newNumbers = numbers.map({ (number: Int) -> Int in
//    if number % 2 == 1 {
//        return 0
//    }
//    return number
//})
//
//class Shape {
//    var numberOfSides = 0
//    let color = "white"
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//
//    func getArea(side: Int) -> Int {
//        return side * side
//    }
//}
//
//var shape = Shape()
//shape.numberOfSides = 7
//var shapeDescription = shape.simpleDescription()

//class NamedShape {
//    var numberOfSides: Int = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func simpleDescription() -> String {
//        return "A shape with \(numberOfSides) sides."
//    }
//}
//

struct NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "my struct shape with \(numberOfSides) sides"
    }
}

let shape = NamedShape(name: "my shape")
shape.simpleDescription()
//class Square: NamedShape {
//    var sideLength: Double
//
//    init(sideLength: Double, name: String) {
//        self.sideLength = sideLength
//        super.init(name: name)
//        numberOfSides = 4
//    }
//
//    func area() -> Double {
//        return sideLength * sideLength
//    }
//
//    override func simpleDescription() -> String {
//        return "A square with sides of length \(sideLength)."
//    }
//}
//
//class Circle: NamedShape {
//    var radius: Double
//    init(radius: Double, name: String) {
//        self.radius = radius
//        super.init(name: name)
//        numberOfSides = 1
//    }
//
//    func area() -> Double {
//        return 3.14 * radius * radius
//    }
//
//    override func simpleDescription() -> String {
//        return "A circle with radius of length \(radius)"
//    }
//}
//
//let test = Circle(radius: 5.0, name: "my test circle")
//test.area()
//test.simpleDescription()
//
//let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
//let sideLength = optionalSquare?.sideLength
//print((optionalSquare?.name)!)


enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
    
    func compareRawValue(rank1: Rank, rank2: Rank) -> Bool {
        return rank1.rawValue > rank2.rawValue
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace.simpleDescription())
print(aceRawValue)
print(Rank.eight.rawValue)

ace.compareRawValue(rank1: Rank.five, rank2: Rank.five)


enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .diamonds, .hearts:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()
let spades = Suit.spades
let spadesColor = spades.color()

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case fetching(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let fetching = ServerResponse.fetching("fetching response")

switch fetching {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .fetching(message):
    print("Waiting... \(message)")
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."

class Person {
    var residence: Residence?
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

let john = Person()
john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}


// Prints "Unable to retrieve the number of rooms."
