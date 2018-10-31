import Foundation

public class BeverageBar {
    private var _order: Order?
    
    public init(){}
    
    private func addBeverageToOrder(beverage: PreparedBeverage) {
        if let order = _order {
            order.add(beverage)
        } else {
            self._order = Order()
            self._order?.add(beverage)
        }
    }
    
    public func prepare(beverageType: BeverageType = .bloodyLatte) {
        let prepared = PreparedBeverage(beverageType:(MenuBeverage(beverageType: beverageType)))
        addBeverageToOrder(beverage: prepared)
    }
    
    public func processOrder() -> Double {
        guard let order = _order else {
            return 0
        }
        return order.checkout()
    }
    
    public func getOrderItems() -> [PreparedBeverage]? {
        return _order?.getBeverages()
    }
}
