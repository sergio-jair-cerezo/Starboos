import Foundation

public struct MenuBeverage {
    let price: Double
    
    public init(price: Double = 4) {
        self.price = price
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
