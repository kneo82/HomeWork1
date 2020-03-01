//
//  SongView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 27.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct SongView: View {
    var songModel: Song
    
    var body: some View {
        HStack {
            VStack {
                Text(songModel.name)
                    .fontWeight(.bold)
                    .font(.system(size: 50))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text(songModel.artist)
                    .fontWeight(.medium)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
            .navigationBarTitle(Text(songModel.name))
    }
}

struct SongView_Previews: PreviewProvider {
    static var previews: some View {
        SongView(songModel: Song(name: "With or Without You", artist: "Amy Lee"))
    }
}
