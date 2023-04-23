//
//  MyNavigationView.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/06.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View {
        
        NavigationView{
            
            MyList()
            
                .navigationBarTitle("안녕하세요")
                .navigationBarItems(leading: Button(action: {
                        print("호호")
                         }){
                        Text("호호")
                }
             ,trailing: NavigationLink(
                destination: Text("넘어온 화면입니다."))
                {
                    Image(systemName: "bookmark.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.black)
                }
            )
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyNavigationView()
        }
    }
}
