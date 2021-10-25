//
//  ViewModelTests.swift
//  TiligTestTests
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import XCTest
@testable import TiligTest

class ViewModelTests: XCTestCase {

    var viewModel:ViewModel?

    override func setUpWithError() throws {
        viewModel = ViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testInit() throws {
        guard let vm = viewModel else {
            XCTFail()
            return
        }
        XCTAssertNotNil(vm.timerHelper)
    }

    func testStartStopTimer() throws {
        guard let vm = viewModel else {
            XCTFail()
            return
        }
        vm.startStopTimer()
        XCTAssertEqual(vm.stateString.value, "Stop")

        //stopTimer
        vm.startStopTimer()
        XCTAssertEqual(vm.stateString.value, "Start")
    }

}
