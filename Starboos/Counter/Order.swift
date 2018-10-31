import Foundation

public class Order {
    private var beverages: [PreparedBeverage]
    
    public init() {
        self.beverages = [PreparedBeverage]()
    }
    
    func add(_ beverage: PreparedBeverage) {
        self.beverages.append(beverage)
    }
    
    public func checkout() -> Double {
        let total = self.beverages.map{$0.cost}.reduce(0.0, +)
        return total
    }
}
