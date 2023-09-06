import XCTest
import VoltorbFlipKit


final class VoltorbFlipKitTests: XCTestCase {
    internal typealias SystemUnderTest = VoltorbFlipKit

    internal var sut: SystemUnderTest!
}


// MARK: - Lifecycle
extension VoltorbFlipKitTests {

    override func setUp() async throws {
        // Put setup code here.
        // This method is called before the invocation of each
        // test method in the class.

        try await super.setUp()

        sut = makeSUT()
    }


    override func tearDown() async throws {
        // Put teardown code here.
        // This method is called after the invocation of each
        // test method in the class.

        try await super.tearDown()

        sut = nil
    }
}


// MARK: - Factories
extension VoltorbFlipKitTests {

    internal func makeSUT() -> SystemUnderTest {
        .init(
            // 💡 Pass in arguments by using current properties
            // of the test class instance.
        )
    }

    /// Helper to make the system under test from any default initializer
    /// and then test its initial conditions
    internal func makeSUTFromDefaults() -> SystemUnderTest {
        .init()
    }
}


// MARK: - "Given" Helpers (Conditions Exist)
extension VoltorbFlipKitTests {

    internal func givenSomething() {
        // some state or condition is established
    }
}


// MARK: - "When" Helpers (Actions Are Performed)
extension VoltorbFlipKitTests {

    internal func whenSomethingHappens() {
        // perform some action
    }
}


// MARK: - Test - Init with Default Properties
extension VoltorbFlipKitTests {

    func test_Init_WhenCreatingWithDefaultProperties_ItSetsTextToExpectedValues() async throws {
        let expected = "Hello, World!"
        let actual = sut.text

        XCTAssertEqual(actual, expected)
    }
}
