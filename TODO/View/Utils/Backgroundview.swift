//
//  Backgroundview.swift
//  TODO
//
//  Created by Manav Tore on 20/11/23.
//

import SwiftUI

struct Backgroundview: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.black , Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}

#Preview {
    Backgroundview()
}
