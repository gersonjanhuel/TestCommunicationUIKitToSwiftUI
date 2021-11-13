//
//  SecondCustomView.swift
//  TestX
//
//  Created by Gerson Janhuel on 13/11/21.
//

import SwiftUI

struct SecondCustomView: UIViewControllerRepresentable {
    @Binding var bindedValue: Int
    
    func makeUIViewController(context: Context) -> SecondViewController {
        let vc = SecondViewController()
        vc.customDelegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ vc: SecondViewController, context: Context) {
        print("the bindedValue updated: \(bindedValue)")
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(customView: self)
    }

    // coordinator conform to CustomDelegate
    class Coordinator: NSObject, CustomDelegate {
        var parent: SecondCustomView

        init(customView: SecondCustomView) {
            self.parent = customView
        }

        func didUpdateWithValue(_ value: Int) {
            parent.bindedValue = value
        }
    }
    
}
