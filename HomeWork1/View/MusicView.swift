//
//  MusicView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct MusicView: View {
    @EnvironmentObject var viewModel: MusicViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.songs) { song in
                    NavigationLink(destination: SongView(songModel: song)) {
                        SongCellView(songModel: song)
                    }
                    
                }
                .navigationBarTitle(Text("Songs"))
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView().environmentObject(MusicViewModel())
    }
}
