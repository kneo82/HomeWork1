//
//  SettingView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 26.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @State var isShowModal: Bool = false
    
    var body: some View {
        VStack {
            Button("Modal view") {
                self.isShowModal.toggle()
            }
        }
        .sheet(isPresented: $isShowModal, onDismiss: { print("Modal Closed" )}) {
            ModalView()
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
