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
    
    @Binding var selectedItemId: UUID?

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.songs) { song in
                    NavigationLink(destination: LazyView(SongView(songModel: song)), tag: song.id, selection: self.$selectedItemId) {
                        SongCellView(songModel: song)
                    }
                }
                .navigationBarTitle(Text("Songs"))
                .navigationViewStyle(StackNavigationViewStyle())
            }
            
            SongView(songModel: viewModel.songs.first ?? Song(name: "Empty", artist: "Empty"))
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    @State static var id: UUID?
    static var previews: some View {
        MusicView(selectedItemId: $id).environmentObject(MusicViewModel())
    }
}
