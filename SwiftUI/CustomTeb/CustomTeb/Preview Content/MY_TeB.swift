//
//  MY_TeB.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/18.
//

import SwiftUI

struct MY_TeB: View {
    
    
    var title : String
    var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
//                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }.animation(.none)
    }
}

struct MY_TeB_Previews: PreviewProvider {
    static var previews: some View {
        MY_TeB(title: "마이뷰", bgColor: Color.yellow)
    }
}
