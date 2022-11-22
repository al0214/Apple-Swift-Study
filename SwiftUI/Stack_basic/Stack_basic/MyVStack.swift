//
//  MyVStack.swift
//  Stack_basic
//
//  Created by 김재우 on 2022/04/25.
//

import SwiftUI

struct MyVStackView:View {
    
    var body: some View {
        
        // 세로 축
        VStack(alignment: .trailing, spacing: 0){
            
            Divider() // 정렬 함수
                .opacity(0) // 정렬을 할때 회색 줄이 생기는데 지우는 함수
            
//            Spacer()  // 가중치를줘서 밀어버림
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
//                    .padding(.bottom, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
//                .padding(.vertical, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.orange)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer() // 가중치를 줘서 다 밀어버림
//            Spacer()
            
        } // .edgesIgnoringSafeArea(.all)
             .frame(width: 300)
             .background(Color.green)
    }
}


struct MyStack_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
