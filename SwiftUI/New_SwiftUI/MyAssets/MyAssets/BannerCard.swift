//
//  BannerCard.swift
//  MyAssets
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    var body: some View {
//        ZStack{
//            Color(banner.backgroundColor)
//            VStack{
//                Text(banner.title)
//                    .font(.title)
//                Text(banner.discription)
//                    .font(.subheadline)
//            }
//        }
        Color(banner.backgroundColor)
            .overlay(
                VStack{
                    Text(banner.title)
                        .font(.title)
                    Text(banner.discription)
                        .font(.subheadline)
                }
            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "공지사항", discription: "추가된 공지사항을 확인하세요", backgroundColor: .red)
        BannerCard(banner: banner0)
    }
}
