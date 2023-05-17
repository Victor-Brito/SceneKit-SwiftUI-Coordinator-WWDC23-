//
//  AboutMeButton.swift
//  
//
//  Created by Victor Brito on 18/04/23.
//

import SwiftUI

struct AboutMeButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    @State var showButton = false
    
    var body: some View {
        VStack {
            if showButton {
                Button {
                    coordinator.present(sheet: .aboutMe)
                } label: {
                    ButtonAnimation()
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.3) {
                self.showButton = true
            }
        }
    }
}
