//
//  HomeView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Button(
            action: {
                
            },
            label: {
                Image(systemName: "play.circle.fill")
            }
        )
            .font(.system(size: 200))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
