//
//  SecondViewController.swift
//  TestX
//
//  Created by Gerson Janhuel on 13/11/21.
//

import UIKit

protocol CustomDelegate {
    func didUpdateWithValue(_ value: Int)
}

class SecondViewController: UIViewController {
    
    var customDelegate: CustomDelegate?
    
    var runCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        doSomething()
    }
    
    func doSomething() {
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { timer in
            self.runCount += 1
            self.methodThatUpdateValue()
            if self.runCount == 10 {
                timer.invalidate()
            }
        }
    }
    
    func methodThatUpdateValue(){
        // call the implementer
        customDelegate?.didUpdateWithValue(runCount)
    }

}
