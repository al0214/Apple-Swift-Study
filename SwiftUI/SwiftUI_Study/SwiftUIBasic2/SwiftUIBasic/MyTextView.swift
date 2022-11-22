//
//  MyText.swift
//  SwiftUIBasic
//
//  Created by 김재우 on 2022/04/21.
//

import SwiftUI



struct MyTextView: View {
    
        // 데이터를 연동시킨다.
        @Binding
        var isActivated: Bool
        
        // 생성자
        init(isActivated: Binding<Bool> = .constant(false)) {
            _isActivated = isActivated
        }
    
    // State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.orange,
        Color.purple,
        Color.blue
    ]
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                // 이걸 하지 않을시 양쪽으로 색이 뜨게 된다.
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            Text("활성화 상태 : \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.purple : Color.gray )
                .background(Color.black)
            
            Spacer()
            
        } .background(backgroundColors[index])
          .onTapGesture {
                print("배경아이템이 클릭 되었다.")
              
              if(self.index == self.backgroundColors.count - 1){
                  self.index = 0
              } else {
                  self.index += 1
              }
          }
    }
}

struct MyTextView_Priviews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}

