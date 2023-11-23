//
//  logoview.swift
//  TODO
//
//  Created by Manav Tore on 20/11/23.
//

import SwiftUI

struct logoview: View {
    var body: some View {
        VStack{
            Image("loginview").resizable().aspectRatio(contentMode: .fit).frame(width: 300,height: 350)
        }
    }
}

#Preview {
    logoview()
}
