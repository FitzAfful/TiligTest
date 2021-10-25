//
//  ViewController.swift
//  TiligTest
//
//  Created by Fitzgerald Afful on 25/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    var viewModel: ViewModel? = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startStopTimer(_ sender: Any) {
        guard let vm = viewModel else { return }
        vm.startStopTimer()
    }
}

