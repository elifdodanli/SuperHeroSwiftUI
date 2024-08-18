//
//  DetayView.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperHero
    var body: some View {
            VStack{
                MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                    .frame(height: UIScreen.main.bounds.height * 0.3)
                    .ignoresSafeArea(.all)
                OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center )
                    .offset(y : UIScreen.main.bounds.height * -0.30)
                    .padding(.bottom,UIScreen.main.bounds.height * -0.10)
                   
                
                
                VStack{
                    HStack {
                        Text(secilenKahraman.isim)
                            .font(.largeTitle)
                            .foregroundStyle(Color.red)
                        
                        Spacer()
                        Text(secilenKahraman.gercekIsim)
                            .font(.title)
                            .foregroundStyle(Color.blue)
                    }
                    HStack{
                        Text(secilenKahraman.sehir)
                            .font(.title2)
                        
                        
                        Spacer()
                        Text(secilenKahraman.meslek)
                            .font(.title2)
                    }
                    
                    Text("\(secilenKahraman.isim)'s enemy is \(secilenKahraman.enemy)")
                        .font(.title3)
                        .padding(.top)
                    
                }.padding()
                    .offset(y : -195)
                Spacer()
        }
    }
}

#Preview {
    DetayView(secilenKahraman: spiderman)
}
