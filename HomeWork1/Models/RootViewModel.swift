//
//  RootViewModel.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 01.03.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import Foundation

class RootViewModel: ObservableObject {
    @Published var selectedTab: Tab = .home
}

extension RootViewModel {
    enum Tab: Hashable {
        case home
        case music
        case settings
    }
}
