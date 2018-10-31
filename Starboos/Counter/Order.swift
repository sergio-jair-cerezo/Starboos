import Foundation

public class Order {
    private var _beverages: [PreparedBeverage]
    
    public init() {
        _beverages = [PreparedBeverage]()
    }
    
    func add(_ beverage: PreparedBeverage) {
        _beverages.append(beverage)
    }
    
    public func checkout() -> Double {
        let total = _beverages.map{$0.cost}.reduce(0.0, +)
        return total
    }
    
    func getBeverages() -> [PreparedBeverage] {
        return _beverages
    }
}
