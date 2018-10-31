import Foundation

public class BeverageBar {
    private var order: Order?
    
    public init(){}
    
    private func addBeverageToOrder(beverage: PreparedBeverage) {
        if let order = order {
            order.add(beverage)
        } else {
            self.order = Order()
            self.order?.add(beverage)
        }
    }
    
    public func prepare(beverageOfType: BeverageType) {
        let prepared = PreparedBeverage(beverageType:(MenuBeverage(beverageType: beverageOfType)))
        addBeverageToOrder(beverage: prepared)
    }
    
    public func processOrder() -> Double {
        guard let order = order else {
            return 0
        }
        return order.checkout()
    }
}
