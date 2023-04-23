//
//  MyGeometryReader.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/09.
//

import SwiftUI

struct MyGeometryReader: View {
    var body: some View {
        
//        GeometryReader{ geometryReader in
//
//
//        }
        
        GeometryReader { g in
            
            
            HStack(spacing: 10){
                
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: g.size.width / 3)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: g.size.width / 3)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: g.size.width / 3)
                        .foregroundColor(Color.white)
                        .background(Color.green)
//                    Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 100)
//                    .foregroundColor(Color.white)
//                    .background(Color.purple)
                }
                .background(Color.yellow)
                .frame(width : g.size.width,
                             height : g.size.height,
                             alignment : .center)

        .background(Color.black)
        }
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        
        MyGeometryReader()
    }
}
