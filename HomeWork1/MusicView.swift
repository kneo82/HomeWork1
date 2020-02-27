//
//  MusicView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
                Text("Hello World2")
                Text("Hello World3")
            }
            .navigationBarTitle(Text("Navigation Title")) // Default to large title style
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
