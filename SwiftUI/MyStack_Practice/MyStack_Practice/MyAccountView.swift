//
//  MyAccountView.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/06.
//

import SwiftUI

struct MyAccountView: View {
    var body: some View {
            ScrollView{
                    VStack{
                        MyCircleImageView(ImageSetting: "raccon")
                            .padding(.vertical, 20)
                        Text("개발하는 정대리")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                        
                        Spacer().frame(height: 20)
                        
                        Text("구독과 좋아요 부탁드립니다!")
                            .font(.system(size: 25))
                            .fontWeight(.black)
                        
                        Spacer().frame(height: 14)
                        
                        HStack{
                            Text("구독하러 가기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(20)
                            
                            Text("네이버로 가기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(20)
                            }
                        Spacer()
                        }
                    }
            .navigationTitle("내 프로필")
            .navigationBarItems(trailing: NavigationLink(destination:
                Text("설정 화면 입니다.")
                    .font(.largeTitle)
                    .fontWeight(.black)
                ){
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
            }
                
            )
        }
    }


struct MyAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
