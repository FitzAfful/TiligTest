//
//  ViewModel.swift
//  TiligTest
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import Foundation

class ViewModel {
    var timerHelper: TimerHelperProtocol?

    init(tHelper: TimerHelperProtocol = TimerHelper()) {
        self.timerHelper = tHelper
    }

    func startStopTimer() {
        guard let tHelper = timerHelper else { return }
        tHelper.currentState == .started ? tHelper.stopTimer() : tHelper.startTimer()
    }
}
