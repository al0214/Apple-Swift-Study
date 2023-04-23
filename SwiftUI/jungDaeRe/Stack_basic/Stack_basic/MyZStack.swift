//
//  MyZStack.swift
//  Stack_basic
//
//  Created by 김재우 on 2022/04/25.
//

import SwiftUI

struct MyZStackView: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.red)
                .zIndex(2) // ZStack의 번호를 부여
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.orange)
                .zIndex(1)
            
            Rectangle()
            
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
                
        }
    }
}

struct MyZStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyZStackView()
    }
}
