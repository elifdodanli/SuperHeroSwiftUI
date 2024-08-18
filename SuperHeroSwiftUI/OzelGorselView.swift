//
//  OzelGorselView.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5)).shadow( radius: 12)
    }
}

#Preview {
    OzelGorselView(image: Image("batman"))
}
