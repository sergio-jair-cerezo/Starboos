import Foundation

enum BeverageType {
    case bloodyLatte, zombieMatcha
}

enum BeverageSize: Double {
    case small = 1.0, medium = 1.5, large = 2.0
}

struct Beverage {
    let style: BeverageType
    let price: Double
}

struct PreparedBeverage {
    let beverageType: Beverage
    let size: BeverageSize
    
    var cost: Double {
        get {
            return beverageType.price * size.rawValue
        }
    }
}
