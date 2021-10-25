//
//  ViewControllerTests.swift
//  TiligTestTests
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import XCTest
@testable import TiligTest

class ViewControllerTests: XCTestCase {

    var viewController: ViewController?

    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        viewController?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        viewController = nil
    }

    func testStartStopTimer() throws {
        guard let vc = viewController else { return }
        vc.startStopTimer(vc.startStopButton!)
        XCTAssertEqual(vc.startStopButton.title(for: .normal), "Stop")
    }

}
