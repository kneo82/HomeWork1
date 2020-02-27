//
//  TrackCellView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 27.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct TrackCellView: View {
    var trackModel: Track
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                    Group {
                        Text(trackModel.name)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        
                        Text(trackModel.artist)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                }
            }
        }
    }
}

struct TrackCellView_Previews: PreviewProvider {
    static var previews: some View {
        TrackCellView(trackModel: Track(name: "With or Without You", artist: "Amy Lee"))
    }
}
