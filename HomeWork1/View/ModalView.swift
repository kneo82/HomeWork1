//
//  ModalView.swift
//  HomeWork1
//
//  Created by Vitaliy Voronok on 29.02.2020.
//  Copyright © 2020 Vitaliy Voronok. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var isShowing = true
    
    @State var mapChoioce = 0
    var settings = ["Map", "Transit", "Satellite"]
    
    @State var progress: Float = 0
    
    var body: some View {
        VStack {
            Text("Modal View")
            
            Button("Back") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
