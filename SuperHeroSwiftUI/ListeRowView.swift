//
//  ListeRowView.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import SwiftUI

struct ListeRowView: View {
    var superHero : SuperHero
    var body: some View {
        HStack {
            
            Image(superHero.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.frame(width: 150,height: 150, alignment: .leading)
                .clipShape(Circle())
                .offset(x : -23)
                .shadow(radius: 20)
     
            VStack {
                Text(superHero.isim)
                    .font(.title)
                    .bold()
                    .frame(alignment: .leading)
                Text(superHero.gercekIsim)
                    .font(.title2)
                
            }
            Spacer()
        }
        
        
    }
}

#Preview {
    ListeRowView(superHero: batman)
}
