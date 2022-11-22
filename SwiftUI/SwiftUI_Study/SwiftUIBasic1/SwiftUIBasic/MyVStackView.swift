//
//  MyVStackView.swift
//  SwiftUIBasic
//
//  Created by 김재우 on 2022/04/21.
//

import SwiftUI

struct MyVStackView: View {
    
    var body: some View {
        VStack{ // VStack or HStack
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 80))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 80))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 80))
        } .background(Color.red)
    }
    
}

struct MyVStackView_Priviews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
