//
//  ViewModel.swift
//  TiligTest
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import Foundation

class ViewModel {
    var timerHelper: TimerHelperProtocol?
    var timeString: Observable<String> = Observable("00:00:00")
    var stateString: Observable<String> = Observable("Start")

    init(tHelper: TimerHelperProtocol = TimerHelper()) {
        self.timerHelper = tHelper
        timerHelper?.timerString.bind { (timerString) in
            self.timeString.value = timerString
        }
    }

    func startStopTimer() {
        guard let tHelper = timerHelper else { return }
        tHelper.currentState == .started ? tHelper.stopTimer() : tHelper.startTimer()
        self.stateString.value = tHelper.currentState == .started ? "Stop" : "Start"
    }
}
