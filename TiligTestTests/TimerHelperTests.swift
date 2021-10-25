//
//  TimerHelperTests.swift
//  TiligTestTests
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import XCTest
@testable import TiligTest

class TimerHelperTests: XCTestCase {
    
    var helper:TimerHelperProtocol?

    override func setUpWithError() throws {
        helper = TimerHelper()
    }

    override func tearDownWithError() throws {
        helper = nil
    }

    func testInit() throws {
        guard let timerHelper = helper else {
            XCTFail()
            return
        }
        XCTAssertEqual(timerHelper.getTotalCentiSeconds(), 0)
    }

    func testStartTimer() throws {
        guard let timerHelper = helper else {
            XCTFail()
            return
        }
        timerHelper.startTimer()
        XCTAssertEqual(timerHelper.currentState, .started)
    }

    func testStopTimer() throws {
        guard let timerHelper = helper else {
            XCTFail()
            return
        }
        timerHelper.stopTimer()
        XCTAssertEqual(timerHelper.currentState, .stopped)
    }

}
