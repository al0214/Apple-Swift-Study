//
//  ContentView.swift
//  NetflixStyle
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Simple App"]
    var body: some View {
        NavigationView{
            List(titles, id: \.self) {
                let NetflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: NetflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
