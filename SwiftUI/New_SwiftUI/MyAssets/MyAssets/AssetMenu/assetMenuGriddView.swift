//
//  assetMenuGriddView.swift
//  MyAssets
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct assetMenuGriddView: View {
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount, .investment, .loan],
        [.insurance, .creditCard, .cash, .realEstate]
    ]
    var body: some View {
        VStack(spacing: 20){
            ForEach(menuList, id: \.self){ row in
                HStack(spacing:10){
                    ForEach(row){ menu in
                        Button(""){
                            print("\(menu.title)버튼이 Tapped")
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

struct assetMenuGriddView_Previews: PreviewProvider {
    static var previews: some View {
        assetMenuGriddView()
    }
}
