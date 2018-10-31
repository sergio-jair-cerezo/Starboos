import XCTest

class BeveragesTests: XCTestCase {
    
    let zombieMatchaMB = MenuBeverage(beverageType: .zombieMatcha)

    override func setUp() {}

    override func tearDown() {}

    func testThatMenuBeverageHasADefaultBeverageTypeAsBloodyLatte() {
        let mb = MenuBeverage(beverageType: .bloodyLatte)
        XCTAssert(mb.beverageType == .bloodyLatte)
    }
    
    func testThatMenuBeverageOfZombieMatchaCanBeCreated() {
        XCTAssert(zombieMatchaMB.beverageType == .zombieMatcha)
    }
    
    func testThatZombieMatchaIsFor99() {
        XCTAssertEqual(zombieMatchaMB.price, 4.99)
    }
}
