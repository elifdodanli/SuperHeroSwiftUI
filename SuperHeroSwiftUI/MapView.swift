//
//  MapView.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    

    
}

#Preview {
    MapView(coordinate: superKahramanDizisi[0].koordinatLokasyonu)
}
