//
//  ContentView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            HomeView()
                .font(.title)
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
                .tag(0)
            MusicView()
                .font(.title)
                .tabItem({
                    Image(systemName: "music.note.list")
                    Text("Music")
                })
                .tag(1)
            SettingView()
                .font(.title)
                .tabItem({
                    Image(systemName: "gear")
                    Text("Settings")
                })
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
