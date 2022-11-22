//
//  My_TebView.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/16.
//

import SwiftUI



struct My_TebView: View {
    init() {
      UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    var body: some View {
        
        TabView {
            // 보여질 화면
            MY_TeB(title: "1번", bgColor: Color.yellow)
                .tag(0)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("3번")
                }
            MY_TeB(title: "2번", bgColor: Color.green)
                .tabItem {
                    Image(systemName: "book")
                    Text("3번")
                }
                .tag(1)
            
            MY_TeB(title: "3번", bgColor: Color.purple)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2)
        }
        .font(.headline)
        
    }
}

struct My_TebView_Previews: PreviewProvider {
    static var previews: some View {
        My_TebView()
    }
}
