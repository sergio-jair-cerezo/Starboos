import Foundation

struct BeverageBarViewModel {
    
    let menuBeverages = [MenuBeverage()]
    
    var beverageBar: BeverageBar
    
    var beverageTypes: [(String, Double)] {
        get {
            return menuBeverages.map{($0.name, $0.price)}
        }
    }
    
    func addAction() {
        beverageBar.prepare()
    }
    
    func addZombieMatcha() {
        beverageBar.prepare(beverageType: .zombieMatcha)
    }
    
    func getOrderTotal() -> String {
        return("Total: $\(beverageBar.processOrder())")
    }
    
    func getOrder() -> [(String, String)]? {
        let beverages = beverageBar.getOrderItems()
        return beverages.map{ $0.map{ ("\($0.beverageType.name)", "$\($0.cost)") } } //todo remove the name
    }
}
