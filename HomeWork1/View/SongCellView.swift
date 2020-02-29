//
//  SongCellView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 27.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct SongCellView: View {
    var songModel: Song
    
    var body: some View {
        VStack(alignment: .leading) {
                Text(songModel.name)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                Text(songModel.artist)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
        }
    }
}

struct SongCellView_Previews: PreviewProvider {
    static var previews: some View {
        SongCellView(songModel: Song(name: "With or Without You", artist: "Amy Lee"))
    }
}
