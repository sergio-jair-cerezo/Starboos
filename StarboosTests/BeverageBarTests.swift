import XCTest

class BeverageBarTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatBarCanPrepareZombieMatchas() {
        let bar = BeverageBar()
        bar.prepare(beverageType: .zombieMatcha)
        XCTAssertEqual(bar.processOrder(), 4.99)
    }
    
    func testThatBarCanCheckoutDifferentTypes() {
        let bar = BeverageBar()
        bar.prepare(beverageType: .zombieMatcha)
        bar.prepare(beverageType: .bloodyLatte)
        XCTAssertEqual(bar.processOrder(), 8.99)
    }

}
