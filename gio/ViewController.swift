//
//  ViewController.swift
//  gio
//
//  Created by Macbook on 17/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
        var timer = Timer()

        @IBOutlet weak var label: UILabel!

        @IBAction func startTimerButtonTapped(sender: UIButton) {
            timer.invalidate()

            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        }

        @IBAction func cancelTimerButtonTapped(sender: UIButton) {
            timer.invalidate()
        }

    @objc func timerAction() {
            counter += 1
            label.text = "\(counter)"
        }
   


    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


