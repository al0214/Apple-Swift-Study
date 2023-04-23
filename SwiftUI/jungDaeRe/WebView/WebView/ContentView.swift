//
//  ContentView.swift
//  WebView
//
//  Created by 김재우 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebView(urlToLoad: "https://www.naver.com")
        
        NavigationView{
            
           
            
            HStack{
                NavigationLink(destination:
                    MyWebView(urlToLoad:"https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                ){
                    Text("네이버")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(10)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad:"https://www.google.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("구글")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                NavigationLink(destination: MyWebView(urlToLoad:"https://www.youtube.com")
                    .edgesIgnoringSafeArea(.all)
                ){
                    Text("유튜브")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(10)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                
                
            }
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
