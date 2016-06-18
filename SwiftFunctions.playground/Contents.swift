// Swift Functions //


func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
}


// Room 1
let areaOfRoom1 = calculateArea(10, width: 8)
// Room 2
calculateArea(12, width: 15)

func concatenateStrings(a: String, b: String) -> String {
    return a + b
}

concatenateStrings("A", b: "B")

func sayHello(to person: String, and anotherPerson: String) -> String {
    
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Pasan", and: "Gabe")

// Default Values //

func carpetCostCalculator(length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
    // Gray Carpet - $1/sq ft
    // Tan Carpet - $2/sq ft
    // Deep Blue Carpet - $4/sq ft
    
    let area = calculateArea(length, width: width)
    
    var price: Int
    
    switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
        default: price = 0
    }
    
    return (price, carpetColor)
    
}

let result = carpetCostCalculator(length: 10, width: 20)

result.price
result.carpetColor

// Function Scope //

func countDownAndUp(var a: Int) {
    var b = a
    
    while b >= 0 {
        b -= 1
        a += 1
        print("a: \(a)")
        print("b: \(b)")
    }
}

var a = 20
countDownAndUp(a)

