//
//  MyCircleImageView.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/06.
//

import SwiftUI

struct MyCircleImageView: View {
    
    var ImageSetting:String
    
    var body: some View {
        VStack{
            Image(ImageSetting)
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
                .overlay(
                    Circle().strokeBorder(Color.yellow, lineWidth:15)
                )
        }
    }
}

struct MyCircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyCircleImageView(ImageSetting: "raccon")
    }
}
