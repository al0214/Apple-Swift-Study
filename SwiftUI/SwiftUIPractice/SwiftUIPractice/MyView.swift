//
//  MyView.swift
//  SwiftUIPractice
//
//  Created by SamoYed on 2023/04/16.
//

import SwiftUI

struct MyView: View {
    let HelloFont: Font
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
            Text("만나서 반가워요")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(HelloFont: .title)
    }
}
