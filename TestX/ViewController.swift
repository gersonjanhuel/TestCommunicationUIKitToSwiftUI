//
//  ViewController.swift
//  TestX
//
//  Created by Gerson Janhuel on 12/11/21.
//

import UIKit

class SharedViewModel: ObservableObject{
    @Published var myString = "init String"
}

class ViewController: UIViewController {

    let sharedVM: SharedViewModel
        
        var runCount = 0
        
        init(vm: SharedViewModel) {
            self.sharedVM = vm
            super.init(nibName: nil, bundle: nil)
            //Sample update mimics the work of a Delegate or IBAction, etc
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        self.runCount += 1
                        self.methodThatChangeValueOfString()
                        if self.runCount == 10 {
                            timer.invalidate()
                        }
                    }
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func methodThatChangeValueOfString(){
            sharedVM.myString = "method change" + runCount.description
        }

}
