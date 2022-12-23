//
//  ViewController.swift
//  TimerProject
//
//  Created by Bedirhan Köse on 22.12.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimerLabel: UILabel!
    
    var timer = Timer()
    var kalanZaman = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        kalanZaman = 15
        
        TimerLabel.text = "Zaman: \(kalanZaman)"

    }

    @IBAction func TimeStarted(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        TimerLabel.text = "Zaman: \(kalanZaman)"
        
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            TimerLabel.text = " Sure bitti..."
            timer.invalidate()
            kalanZaman = 15
        }
    }
}

