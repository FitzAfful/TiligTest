//
//  TimerHelper.swift
//  TiligTest
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import Foundation

protocol TimerHelperProtocol {
    func startTimer()
    func stopTimer()

    var currentState: TimerState { get set }
}

class TimerHelper: TimerHelperProtocol {
    var currentState: TimerState = .stopped

    func startTimer() {

    }

    func stopTimer() {

    }
}

enum TimerState {
    case started
    case stopped
}
