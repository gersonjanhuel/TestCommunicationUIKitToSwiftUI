//
//  ContentView.swift
//  TestX
//
//  Created by Gerson Janhuel on 12/11/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var sharedVM: SharedViewModel = SharedViewModel()
    
    var body: some View {
        VStack{
            CustomView(sharedVM: sharedVM)
            Text(sharedVM.myString)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
