import Foundation

public enum BeverageType {
    case bloodyLatte, zombieMatcha
}

public struct MenuBeverage {
    let beverageType: BeverageType
    
    public init(beverageType: BeverageType = .bloodyLatte) {
        self.beverageType = beverageType
    }
    
    public var price: Double {
        get {
            switch(beverageType) {
                case .bloodyLatte:
                    return 4.0
                case .zombieMatcha:
                    return 4.99
            }
        }
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
