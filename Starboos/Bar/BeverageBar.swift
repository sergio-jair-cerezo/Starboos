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
    
    public func prepare() {
        let prepared = PreparedBeverage(beverageType:(MenuBeverage()))
        addBeverageToOrder(beverage: prepared)
    }
    
    public func processOrder() -> Double {
        guard let order = order else {
            return 0
        }
        return order.checkout()
    }
}
