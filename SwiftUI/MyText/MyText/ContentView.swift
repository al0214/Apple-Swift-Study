//
//  ContentView.swift
//  MyText
//
//  Created by 김재우 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    
   static let dataFormat: DateFormatter = {
            let formatter = DateFormatter()
       formatter.dateFormat = "YYYY년 M월 d일 입니다."
       return formatter
            }()
    
    var today = Date()
    
    var truthOrFalse : Bool = false
    
    var number : Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ")
                .tracking(5)
                .font(.system(.body, design: .rounded))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .lineSpacing(10)
                    .truncationMode(.middle)
                    .shadow(color: Color.red, radius: 4, x: 0, y: 10)
            
                    .padding(.all, 20)
                    .background(Color.yellow)
                    .cornerRadius(10)
                   
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
            
                    .padding()
                
            Text("안녕하세요")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜는 : \(today, formatter: ContentView.dataFormat) 입니다")
            
            Text("참 또는 거짓 : \(String(truthOrFalse))")
            
            Text("숫자 입니다 : \(number)")
            
        }
            
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
