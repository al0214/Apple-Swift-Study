//
//  MyList.swift
//  MyStack_Practice
//
//  Created by 김재우 on 2022/05/01.
//

import SwiftUI

struct MyList : View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
                UITableView.appearance().separatorColor = UIColor.white
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        
//        List{
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//        }
        
//        List{
//            ForEach(1...10, id: \.self){
//                Text("마이리스트 \($0)")
//            }
//        }
    
        List{
            
            Section(
                header:
                    Text("오늘 할 일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                    
                , footer: Text("footer")
            ){
                    ForEach(1...3, id: \.self){ itemIndex in
        //                Text("마이리스트 \(itemIndex)")
                        MyCard(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "1시", end: "3시", bgColor: Color.green)
                    }
                }
                .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                // 리스트의 간격 조정
            
                Section(
                    header:
                        Text("내일 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
                ){
                    ForEach(1...20, id: \.self){ itemIndex in
            //               Text("마이리스트 \(itemIndex)")
                        MyCard(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "1시", end: "3시", bgColor: Color.blue)
                    }
                }
                .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                .listRowBackground(Color.yellow)
                
            
            }
            .listStyle(GroupedListStyle())
//            .listStyle(PlainListStyle())
            .navigationTitle("내 목록")
            
//            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                isNavigationBarHidden = true
                }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
            MyList()
    }
}
