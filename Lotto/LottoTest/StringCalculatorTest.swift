//
//  StringCalculatorTest.swift
//  LottoTest
//
//  Created by sangsun on 2021/11/17.
//

import XCTest

class StringCalculatorTest: XCTestCase {

    func test_빈문자열을_입력하면_0을_리턴한다() throws {
        let calculator = StringCalculator()
        let result = try calculator.processingString(by: "")
        XCTAssertEqual(result, 0)
        
        let result1 = try calculator.processingString(by: "1")
        XCTAssertNotEqual(result1, 0)
    }
    
    func test_숫자하나만_문자열로_입력하면_해당_숫자를_리턴한다() throws {
        let calculator = StringCalculator()
        let result = try calculator.processingString(by: "1")
        XCTAssertEqual(result, 1)
        
        let result1 = try calculator.processingString(by: "2")
        XCTAssertEqual(result1, 2)
    }
    
    func test_두개의_숫자를_입력하면_두_숫자의_합을_리턴한다() throws {
        let calculator = StringCalculator()
        let result = try calculator.processingString(by: "1,2")
        XCTAssertEqual(result, 3)
    }
    
    func test_구분자를_컴마_이외에_콜론도_사용가능하다() throws {
        let calculator = StringCalculator()
        let result = try calculator.processingString(by: "1:2")
        XCTAssertEqual(result, 3)
    }
    
    func test_음수를_포함하여_전달하면_예외가_발생한다() throws {
        let calculator = StringCalculator()
        XCTAssertThrowsError(try calculator.processingString(by: "-1,2"))
    }
}
