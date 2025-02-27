// IntExtensionsTests.swift - Copyright 2023 SwifterSwift

@testable import SwifterSwift
import XCTest

final class IntExtensionsTests: XCTestCase {
    func testCountableRange() {
        XCTAssertEqual(10.countableRange, 0..<10)
    }

    func testDegreesToRadians() {
        XCTAssertEqual(180.degreesToRadians, Double.pi)
    }

    func testRadiansToDegrees() {
        XCTAssertEqual(Int(3.radiansToDegrees), 171)
    }

    func testUInt() {
        XCTAssertEqual(Int(10).uInt, UInt(10))
    }

    func testDouble() {
        XCTAssertEqual((-1).double, Double(-1))
        XCTAssertEqual(2.double, Double(2))
    }

    func testFloat() {
        XCTAssertEqual((-1).float, Float(-1))
        XCTAssertEqual(2.float, Float(2))
    }

    func testCGFloat() {
        #if canImport(CoreGraphics)
        XCTAssertEqual(1.cgFloat, CGFloat(1))
        #endif
    }

    func testKFormatted() {
        XCTAssertEqual(10.kFormatted, "0k")
        XCTAssertEqual((-10).kFormatted, "0k")

        XCTAssertEqual(0.kFormatted, "0k")

        XCTAssertEqual(1000.kFormatted, "1k")
        XCTAssertEqual((-1000).kFormatted, "-1k")

        XCTAssertEqual(100_000.kFormatted, "100k")
        XCTAssertEqual((-100_000).kFormatted, "-100k")

        XCTAssertEqual(1_000_000.kFormatted, "10kk")
    }

    func testDigits() {
        let number = -123
        XCTAssertEqual(number.digits, [1, 2, 3])
        XCTAssertEqual(123.digits, [1, 2, 3])
        XCTAssertEqual(0.digits, [0])
    }

    func testDigitsCount() {
        let number = -123
        XCTAssertEqual(number.digitsCount, 3)
        XCTAssertEqual(180.digitsCount, 3)
        XCTAssertEqual(0.digitsCount, 1)
        XCTAssertEqual(1.digitsCount, 1)
    }

    func testIsPrime() {
        // Prime number
        XCTAssert(2.isPrime())
        XCTAssert(3.isPrime())
        XCTAssert(7.isPrime())
        XCTAssert(19.isPrime())
        XCTAssert(577.isPrime())
        XCTAssert(1999.isPrime())

        // Composite number
        XCTAssertFalse(4.isPrime())
        XCTAssertFalse(21.isPrime())
        XCTAssertFalse(81.isPrime())
        XCTAssertFalse(121.isPrime())
        XCTAssertFalse(9409.isPrime())

        // Others
        XCTAssertFalse((-1).isPrime())
        XCTAssertFalse(0.isPrime())
        XCTAssertFalse(1.isPrime())
    }

    func testRomanNumeral() {
        XCTAssertEqual(10.romanNumeral(), "X")
        XCTAssertEqual(2784.romanNumeral(), "MMDCCLXXXIV")
        XCTAssertNil((-1).romanNumeral())
    }

    func testRoundToNearest() {
        XCTAssertEqual(12.roundToNearest(5), 10)
        XCTAssertEqual(63.roundToNearest(25), 75)
        XCTAssertEqual(42.roundToNearest(0), 42)
    }

    func testOperators() {
        XCTAssertEqual(5 ** 2, 25)
        XCTAssert((5 ± 2) == (3, 7) || (5 ± 2) == (7, 3))
        XCTAssert((±2) == (2, -2) || (-2, 2) == ±2)
        XCTAssertEqual(√25, 5.0)
    }
}
