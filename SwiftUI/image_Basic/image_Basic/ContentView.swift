//
//  ContentView.swift
//  image_Basic
//
//  Created by 김재우 on 2022/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                
                Image("Samoyed")
                        .frame(height:0)
                        .offset(y:-2850)
                
                
                CircleImageView()
                
                HStack{
                    NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com/")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("유튜브보러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.melon.com/")
                        .edgesIgnoringSafeArea(.all))
                    {
                    Text("노래 찾으러가기")
                        .font(.custom("Henam", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(20)
                    }
                } // HStack
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
