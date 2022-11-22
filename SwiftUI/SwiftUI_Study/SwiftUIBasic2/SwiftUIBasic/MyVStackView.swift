//
//  MyVStackView.swift
//  SwiftUIBasic
//
//  Created by 김재우 on 2022/04/21.
//

import SwiftUI

struct MyVStackView: View {
    
    // 데이터를 연동시킨다.
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    
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
        }   //VStack
        .background(self.isActivated ? Color.blue : Color.red )
        .padding(self.isActivated ? 10 : 0)
    }
    
}

struct MyVStackView_Priviews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}
