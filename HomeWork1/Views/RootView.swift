//
//  ContentView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var rootViewModel: RootViewModel
    @State var songUUID: UUID?
    @EnvironmentObject var musicViewModel: MusicViewModel
    
    var body: some View {
        TabView(selection: $rootViewModel.selectedTab) {
            HomeView() {
                self.rootViewModel.selectedTab = RootViewModel.Tab.music
                self.songUUID = self.musicViewModel.songs.first?.id
            }
                .font(.title)
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
                .tag(RootViewModel.Tab.home)
            MusicView(selectedItemId: $songUUID)
                .font(.title)
                .tabItem({
                    Image(systemName: "music.note.list")
                    Text("Music")
                })
                .tag(RootViewModel.Tab.music)
            SettingView()
                .font(.title)
                .tabItem({
                    Image(systemName: "gear")
                    Text("Settings")
                })
                .tag(RootViewModel.Tab.settings)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(rootViewModel: RootViewModel())
    }
}
