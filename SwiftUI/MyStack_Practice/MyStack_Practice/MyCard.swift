//
//  MyCard.swift
//  MyStack_Practice
//
//  Created by 김재우 on 2022/05/01.
//

import SwiftUI

struct MyCard: View {
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    
    
    var body: some View {
                
        HStack(spacing: 20){
                
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
                
            VStack(alignment: .leading, spacing: 0){
                    Divider().opacity(0)
//                    Rectangle().frame(height: 0)
                    
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    
                Spacer().frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(Color.white)
                    
                }
                
            }
            .padding(20)
            .background(bgColor)
            .cornerRadius(20)
        }
    }


struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "1시", end: "3시", bgColor: Color.green)
    }
}
