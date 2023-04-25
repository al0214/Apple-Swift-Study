//
//  AssetView.swift
//  MyAssets
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 30){
                    Spacer()
                    Spacer()
                    assetMenuGriddView()
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("내 자산 ")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
