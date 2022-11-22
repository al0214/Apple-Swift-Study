//
//  MY_Tebview_2.swift
//  MyStack_Practice
//
//  Created by SamoYed on 2022/05/18.
//

import SwiftUI

enum TabIndex {
    case home
    case cart
    case profile
}

struct MY_Tebview_2: View {

    @State var tabIndex : TabIndex
    
    @State var largerScale : CGFloat = 1.4
    
    func changeMyView(tabIndex: TabIndex) -> MY_TeB {
        switch tabIndex {
        case .home:
            return MY_TeB(title: "홈", bgColor: Color.green)
        case .cart:
            return MY_TeB(title: "장바구니", bgColor: Color.purple)
        case .profile:
            return MY_TeB(title: "프로필", bgColor: Color.blue)
        
        }
    }
    
    func ChangeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
             return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        }
    }
    
    func calcuCirclePostion(tabIndex: TabIndex,g : GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(g.self.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return g.self.size.width / 3
        }
    }
    
    var body: some View {
            GeometryReader { g in
                ZStack(alignment: .bottom) {
                    self.changeMyView(tabIndex: self.tabIndex)
                    
                    Circle()
                        .frame(width: 90, height: 90)
                        .foregroundColor(Color.white)
                        .offset(x:self.calcuCirclePostion(tabIndex: self.tabIndex, g: g), y: UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom == 0 ? 20 : 0)
                    VStack(spacing:0){
                        HStack(spacing:0) {
                            Button(action: {
                                print("홈 버튼 클릭했습니다")
                                withAnimation{
                                    self.tabIndex = .home
                                }
                                
                            }){
                               Image(systemName: "house.fill")
                                    .font(.system(size: 25))
                                    .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                    .foregroundColor(self.tabIndex == .home ? self.ChangeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                    .frame(width: g.size.width / 3, height: 50)
                                    .offset(y:self.tabIndex == .home ? -10 : 0)
                            }.background(Color.white)
                            
                            
                            Button(action: {
                                print("장바구니 클릭했습니다")
                                withAnimation{
                                    self.tabIndex = .cart
                                }
                                
                            }){
                               Image(systemName: "cart.fill")
                                    .font(.system(size: 25))
                                    .scaleEffect(self.tabIndex == .cart ?
                                                 self.largerScale : 1.0)
                                    .foregroundColor(self.tabIndex == .cart ? self.ChangeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                    .frame(width: g.size.width / 3, height: 50)
                                    .offset(y:self.tabIndex == .cart ? -10 : 0)
                            }.background(Color.white)
                            
                            Button(action: {
                                print("프로필 클릭했습니다")
                                withAnimation{
                                    self.tabIndex = .profile
                                }
                               
                            }){
                               Image(systemName: "person.circle.fill")
                                    .font(.system(size: 25))
                                    .scaleEffect(self.tabIndex == .profile ?
                                                 self.largerScale : 1.0)
                                    .foregroundColor(self.tabIndex == .profile ? self.ChangeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                    .frame(width: g.size.width / 3, height: 50)
                                    .offset(y:self.tabIndex == .profile ? -10 : 0)
                                    
                            }.background(Color.white)
                                .zIndex(1)
                        } // HStack
                        Rectangle()
                            .foregroundColor(Color.white)
                            .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 20)
                    }
                }
            } .edgesIgnoringSafeArea(.all)
        }
    }

struct MY_Tebview_2_Previews: PreviewProvider {
    static var previews: some View {
        MY_Tebview_2(tabIndex: .home)
    }
}
