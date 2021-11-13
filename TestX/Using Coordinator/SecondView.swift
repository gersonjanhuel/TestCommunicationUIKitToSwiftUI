//
//  SecondView.swift
//  TestX
//
//  Created by Gerson Janhuel on 13/11/21.
//

import SwiftUI

struct SecondView: View {
    @State private var comingFromUIKitVC = 0
    
    var body: some View {
        VStack {
            SecondCustomView(bindedValue: $comingFromUIKitVC)
            
            Text("VALUE FROM UIKIT \(comingFromUIKitVC)")
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
