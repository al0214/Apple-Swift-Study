//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyView()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
