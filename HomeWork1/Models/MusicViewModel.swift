//
//  MusicViewModel.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 27.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

struct Song: Identifiable {
    var id = UUID()
    let name: String
    let artist: String
}

final class MusicViewModel: ObservableObject {
    @Published private(set) var songs = [Song(name: "With or Without You", artist: "Amy Lee"),
                                          Song(name: "Soulfly IV", artist: "Soulfly"),
                                          Song(name: "Fragmental Duet", artist: "Device"),
                                          Song(name: "Find My Way", artist: "Nine Inch Nails"),
                                          Song(name: "Useless Apologies", artist: "Zakk Wylde"),
                                          Song(name: "Come in Closer", artist: "Blue October"),
                                          Song(name: "Momma Dubbed, Pt. 1 & 2", artist: "Puscifer"),
                                          Song(name: "Tomb of Liegia", artist: "Team Sleep"),
                                          Song(name: "Black Gives Way To Blue", artist: "Sandra Szabo"),
                                          Song(name: "Said and Done", artist: "Eighteen Visions"),
                                          Song(name: "All That Easy", artist: "Limp Bizkit"),
                                          Song(name: "Salt and Shadow", artist: "Thrice"),
                                          Song(name: "Walking Stick", artist: "Deadboy & the Elephantmen")]
}
