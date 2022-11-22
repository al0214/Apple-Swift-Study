//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by 김재우 on 2022/04/21.
//

import SwiftUI

struct ContentView: View {
    
    
    
    // State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        // 몸체
        NavigationView{
            VStack{
                HStack{
                    MyVStackView()
                    MyVStackView()
                    MyVStackView()
                 // HStack
                }
                    .padding(isActivated ? 50 : 10)
                //
                    .background(isActivated ? Color.yellow : Color.black)
                // 텝 재스쳐 추가
                    .onTapGesture {
                            print("HStack이 클릭되었다")
                        // 애미네이션과 함께 toggle 변경
                        withAnimation {
                        // toggle 이 True 이면 false로 flase 이면 True로
                            self.isActivated.toggle()
                        }
                
                    } // 텝 져스쳐
                 
                
                    // 네비게이션 버튼
                    NavigationLink(destination: MyTextView()){ Text("네비게이션")
                            .fontWeight(.bold)
                            .font(.system(size:40))
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(30)
                    }
                    .padding(.top, 50 )
                  
            } // VStack
        } //NavigationView
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
