//
//  MyGeometryReader2.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/11.
//

import SwiftUI

struct MyGeometryReader2: View {
    var body: some View {
        GeometryReader{ g in 
            VStack(spacing: 0) {
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:50, height: g.size.height / 3)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:50, height: g.size.height / 3)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width:50, height: g.size.height / 3)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                
            }
            .background(Color.yellow)
            .frame(width : g.size.width,
                    height : g.size.height,
                    alignment : .center)
            
        }.background(Color.yellow)
    }
}

struct MyGeometryReader2_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader2()
    }
}
