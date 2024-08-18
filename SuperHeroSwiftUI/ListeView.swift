//
//  ContentView.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("DC Heroes")) {
                    ForEach(dcEvreni) { SuperHero in
                        NavigationLink(destination: DetayView(secilenKahraman: SuperHero)) {
                            ListeRowView(superHero: SuperHero)
                        }
                    }
                }

                Section(header: Text("Marvel Heroes")) {
                    ForEach(marvelEvreni) { SuperHero in
                        NavigationLink(destination: DetayView(secilenKahraman: SuperHero)) {
                            ListeRowView(superHero: SuperHero)
                        }
                    }
                }
            }.navigationTitle(Text("SuperHeroes"))
        }
    }
}

#Preview {
    ListeView()
}
