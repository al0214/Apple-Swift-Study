//
//  CircleImage.swift
//  image_Basic
//
//  Created by 김재우 on 2022/04/23.
//

import SwiftUI



struct CircleImageView:View{
    var body: some View {
//        Image(systemName: "flame.fill")
//            // 이미지 크기
//            .font(.system(size: 200))
//            // 이미지 색깔
//            .foregroundColor(Color.gray)
//            // 이미지 그림자
//            .shadow(color: .blue, radius: 2, x: 10, y: 10)
        Image("Samoyed")
            // 화면 사이즈에 맞게 변경
            .resizable()
                .scaledToFill() // 밑에 것과 같은 기능
                // 사진의 크기를 설정 (위 fill의 설정을하면 설정되어 지지 않음)
                .frame(width: 300, height: 300)
                // 사진의 모양을 설정
                .clipShape(Circle())
                .shadow(color: .red, radius: 10, x: 0, y: 10)
                // 다른 블럭을 설치 (겹치기 가능)
                .overlay(
                    Circle()
                        .foregroundColor(.black)
                        // 투명도 설정 (1이 100% 0.5가 50%
                        .opacity(0.4)
                )
                .overlay(
                    Circle().stroke(Color.red, lineWidth: 10)
                    .padding()
                )
                .overlay(
                    Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
                )
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 10)
                )
                .overlay(
                    Text("Samoyed")
                        .font(.custom("Henam", size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                      
                )
                // 사진의 비율 (.fit과 .fil이 있다)
//                .aspectRatio(contentMode: .fill)
                // 위 프레임 만큼 사진을 자름 (밑 엣지에도 영향이 감)
//                .clipped()
                // 엣지 부분을 채우는 설정 (위 비율에 fit이 들어가 있으면 사용 불가)
//                .edgesIgnoringSafeArea(.all)
    }
    
    
}

struct CircleIageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
