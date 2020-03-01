//
//  HomeView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let buttonSize: CGFloat = 200.0
    
    var body: some View {
        Button(
            action: {
                
            },
            label: {
                Image(systemName: "play.circle.fill")
                    .foregroundColor(.green)
            }
        )
            .font(.system(size: buttonSize))
            .frame(width: buttonSize, height: buttonSize, alignment: .center)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
