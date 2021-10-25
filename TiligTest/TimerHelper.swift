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
    var timerString: Observable<String> { get set }

    func calculateTimerString() -> String
}

class TimerHelper: TimerHelperProtocol {
    var currentState: TimerState = .stopped
    private var totalCentiSeconds = 0
    private var timer: Timer?
    var timerString: Observable<String> = Observable("00:00:00")

    func startTimer() {
        currentState = .started
        totalCentiSeconds = 0
        timerString.value = "00:00:00"
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
    }

    func stopTimer() {
        currentState = .stopped
        timer?.invalidate()
    }

    @objc func timerFired() {
        totalCentiSeconds += 1
        self.timerString.value = calculateTimerString()
    }

    func calculateTimerString() -> String {
        let min = totalCentiSeconds.quotientAndRemainder(dividingBy: 6000)
        let sec = (min.remainder).quotientAndRemainder(dividingBy: 100)
        return String(format: "%0.2d:%0.2d:%0.2d", min.quotient, sec.quotient, sec.remainder)
    }
}

enum TimerState {
    case started
    case stopped
}
