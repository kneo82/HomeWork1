//
//  MusicViewModel.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 27.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

struct Track: Identifiable {
    var id = UUID()
    let name: String
    let artist: String
}

final class MusicViewModel: ObservableObject {
    @Published private(set) var tracks = [Track(name: "With or Without You", artist: "Amy Lee"),
                                          Track(name: "Soulfly IV", artist: "Soulfly"),
                                          Track(name: "Fragmental Duet", artist: "Device"),
                                          Track(name: "Find My Way", artist: "Nine Inch Nails"),
                                          Track(name: "Useless Apologies", artist: "Zakk Wylde"),
                                          Track(name: "Come in Closer", artist: "Blue October"),
                                          Track(name: "Momma Dubbed, Pt. 1 & 2", artist: "Puscifer"),
                                          Track(name: "Tomb of Liegia", artist: "Team Sleep"),
                                          Track(name: "Black Gives Way To Blue", artist: "Sandra Szabo"),
                                          Track(name: "Said and Done", artist: "Eighteen Visions"),
                                          Track(name: "All That Easy", artist: "Limp Bizkit"),
                                          Track(name: "Salt and Shadow", artist: "Thrice"),
                                          Track(name: "Walking Stick", artist: "Deadboy & the Elephantmen")]
}
