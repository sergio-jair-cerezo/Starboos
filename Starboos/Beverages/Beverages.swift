import Foundation

public enum BeverageType {
    case bloodyLatte, zombieMatcha
}

public struct MenuBeverage {
    let beverageType: BeverageType
    public init(beverageType: BeverageType = .bloodyLatte) {
        self.beverageType = beverageType
    }
    
    var price: Double {
        get {
            switch(beverageType) {
            case .bloodyLatte:
                return 4.00
            case .zombieMatcha:
                return 4.99
            }
        }
    }
    
    var name: String {
        get {
            switch(beverageType) {
            case .bloodyLatte:
                return "🥤Bloody Latte"
            case .zombieMatcha:
                return "🧟‍♂️Matcha Zombie"
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
