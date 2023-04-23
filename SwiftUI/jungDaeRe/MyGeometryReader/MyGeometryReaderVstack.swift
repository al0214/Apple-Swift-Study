//
//  MyGeometryReaderVstack.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/13.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVstack: View {
    
    @State var index : Index = .one
    
    var body: some View {
        
        GeometryReader { g in
            VStack(spacing: 0) {
                Button(action: {
                    // 버튼이 클릭되었을떄
                    
                    withAnimation{
                        self.index = .one
                    }
                
                })
                {
                    // 버튼 생김새
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width:100, height: g.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                
                Button(action: {
                    withAnimation{
                        self.index = .two
                    }
                })
                {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width:100, height: g.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                Button(action: {
                    withAnimation{
                        self.index = .three
                    }
                })
                {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width:100, height: g.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                }
            }
            .frame(width : g.size.width,
                    height : g.size.height,
                    alignment : .center)
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MyGeometryReaderVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVstack()
    }
}
