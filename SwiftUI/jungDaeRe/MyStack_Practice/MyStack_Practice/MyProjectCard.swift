//
//  Mycard.swift
//  MyStack_Practice
//
//  Created by 김재우 on 2022/04/25.
//

import SwiftUI

struct MyProjectCardView: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height: 0)
            
            Text("Samoyed 유튭 프로젝트")
                .font(.custom("IM_Hyemin-Regular",size: 23))
                .fontWeight(.black)
                .padding(.bottom, 5)
            
            Text("10AM ~ 11AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.red)
                              )
                    
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    print("확인 버튼이 클릭되었습니다.")
                    
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다!"))
                }
            }
            
        }
        .padding(30)
        .background(Color.yellow)
            .cornerRadius(20)
    }
}

struct MyProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCardView()
    }
}
