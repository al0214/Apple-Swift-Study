//
//  ContentView.swift
//  MyStack_Practice
//
//  Created by 김재우 on 2022/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
            NavigationView {
                
                ZStack(alignment: .bottomTrailing){
                        
                    VStack(alignment: .leading, spacing: 0){
                        
                        // 제일 위쪽
                        HStack{
                            
                            NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                                Image(systemName: "line.horizontal.3")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.black)
                            }
                            
                            Spacer()
                            
                            NavigationLink(destination: MyAccountView()){
                                Image(systemName: "person.crop.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(Color.black)
                            }
                            
                        
                        
                        
                        }.padding(10)
                        
                        Text("Samoyed 할 일 목록")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .padding(.horizontal, 20)
                        
                        // 중간 박스들
                    ScrollView{
                            VStack{
                                MyProjectCardView()
                                MyBasicCard()
                                MyCard(icon: "tray.fill", title: "집 청소", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                                MyCard(icon: "tv.fill", title: "영상 검토하기", start: "9 AM", end: "9:30 AM", bgColor: Color.red)
                                MyCard(icon: "cart.fill", title: "장 보기", start: "4 PM", end: "6 PM", bgColor: Color.gray)
                                MyCard(icon: "gamecontroller.fill", title: "집 청소", start: "10 AM", end: "11 AM", bgColor: Color.orange)
                                
                           
                            }
                        }.padding()
                    }
              
                
                    Circle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 60, height: 60)
                            
                        .overlay(
                            Image(systemName: "plus")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                        )
                        .padding(.trailing, 10)
                        .shadow(radius: 20)
                    
                } // ZStack
                .navigationTitle("뒤로가기")
                .navigationBarHidden(self.isNavigationBarHidden)
                .onAppear{
                    isNavigationBarHidden = true
            }
        }// NavigationView
    }
}
         

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
