//
//  ElevatorButton.swift
//  
//
//  Created by Victor Brito on 30/03/23.
//

import SwiftUI

/// Each interactive button has its structure due to its coordinator closure passed inside each action
/// This structure is responsible for creating the interactive button superimposed on the elevator or plane.
struct ElevatorButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    @State var showButton = false
    
    var body: some View {
        VStack {
            if showButton {
                Button {
                    coordinator.present(sheet: .elevatorInfo)
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
