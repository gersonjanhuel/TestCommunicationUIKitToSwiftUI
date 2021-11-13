//
//  CustomView.swift
//  TestX
//
//  Created by Gerson Janhuel on 12/11/21.
//

import SwiftUI

struct CustomView: UIViewControllerRepresentable {
    
    var sharedVM: SharedViewModel
    
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController(vm: sharedVM)
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
            
    }
}

