//
//  MyHStack.swift
//  Stack_basic
//
//  Created by 김재우 on 2022/04/25.
//

import SwiftUI

struct MyHStackView : View {
    var body: some View {
        
        HStack(alignment: .center) {
            
//            Divider()
            
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(Color.red)
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 85))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
        }
        .padding()
        .background(Color.green)
        
        
    }
}

struct MyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyHStackView()
    }
}
