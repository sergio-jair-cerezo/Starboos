import XCTest

class BeveragesTests: XCTestCase {

    override func setUp() {}

    override func tearDown() {}

    func testThatDefaultMenuBeverageIsOfTypeBloodyLatte() {
        let mb = MenuBeverage()
        XCTAssert(mb.beverageType == .bloodyLatte)
    }
    
    func testThatCanCreateZombieMatchaMenuBeverage() {
        let mb = (MenuBeverage(beverageType: .zombieMatcha))
        XCTAssertEqual(mb.beverageType, .zombieMatcha)
    }
    
    func testThatZombieMatchaPriceIs499() {
        let mb = (MenuBeverage(beverageType: .zombieMatcha))
        XCTAssertEqual(mb.price, 4.99)
    }
}
