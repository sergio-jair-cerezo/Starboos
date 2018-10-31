import Foundation

class BeverageBar {
    var order: Order?
    let beverages: [Beverage]
    
    public init(beverages: [Beverage]) {
        self.beverages = beverages
    }
    
    private func addBeverageToOrder(beverage: PreparedBeverage) {
        if let order = order {
            order.add(beverage)
        } else {
            self.order = Order()
            self.order?.add(beverage)
        }
    }
    
    func prepare(beverage: Beverage, ofSize: BeverageSize) {
        let prepared = PreparedBeverage(beverageType: beverage, size: ofSize)
        addBeverageToOrder(beverage: prepared)
    }
}
