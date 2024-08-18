//
//  SuperHero.swift
//  SuperHeroSwiftUI
//
//  Created by 🎀 Elif 🎀 on 18.08.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    var enemy : String
    
    var koordinatLokasyonu  : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }

}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}


let batman = SuperHero(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "Business Man", koordinat: Koordinat(latitude: 41.898045, longitude: -87.678418), enemy: "Joker")

 let superman = SuperHero(isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas City", meslek: "Journalist", koordinat: Koordinat(latitude: 39.083994, longitude: -94.619718), enemy: "General Zod")

let spiderman = SuperHero(isim: "Spider-Man", gercekIsim: "Peter Parker", gorselIsmi: "spidermann", sehir: "Forest Hills, Queens", meslek: "Student", koordinat: Koordinat(latitude: 40.717579, longitude: -73.843937), enemy: " The Lizard")

let ironman = SuperHero(isim: "Iron Man", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "New York", meslek: "Business Man and Engineer", koordinat: Koordinat(latitude: 40.823518, longitude: -73.912216), enemy: "Thanos")

let superKahramanDizisi = [batman, superman, spiderman, ironman]
let dcEvreni = [batman, superman]
let marvelEvreni = [spiderman, ironman]
