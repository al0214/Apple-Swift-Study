//
//  MyView.swift
//  SwiftUIPractice
//
//  Created by SamoYed on 2023/04/24.
//

import SwiftUI

struct MyView: View {

    var body: some View {
        VStack{
            Text("Hello, World!")
                .font(.title)
            Text("만나서 반가워요!")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
