//
//  MusicView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct MusicView: View {
    @ObservedObject var viewModel: MusicViewModel = MusicViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.tracks) { track in
                    NavigationLink(destination: TrackView()) {
                        TrackCellView(trackModel: track)
                    }
                    
                }
                .navigationBarTitle(Text("Traks"))
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
