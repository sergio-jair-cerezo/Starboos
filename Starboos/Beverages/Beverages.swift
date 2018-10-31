import Foundation

public struct MenuBeverage {
    let price: Double
    let name: String
    public init(price: Double = 4, name: String = "bloodyLatte") {
        self.price = price
        self.name = name
    }
}

public struct PreparedBeverage {
    let beverageType: MenuBeverage
    
    var cost: Double {
        get {
            return beverageType.price
        }
    }
}
