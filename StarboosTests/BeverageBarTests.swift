import XCTest

class BeverageBarTests: XCTestCase {

    override func setUp(){}

    override func tearDown() {}

    func testThatPrepareMethodCanPrepareZombieMatchas() {
        let bar = BeverageBar()
        bar.prepare(beverageOfType: .zombieMatcha)
        XCTAssertEqual(bar.processOrder(), 4.99)
    }
    
    func testThat2DifferentTypesCanBePrepared() {
        let bar = BeverageBar()
        bar.prepare(beverageOfType: .zombieMatcha)
        bar.prepare(beverageOfType: .bloodyLatte)
        XCTAssertEqual(bar.processOrder(), 8.99)
    }
}
