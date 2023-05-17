//
//  FirstButton.swift
//  
//
//  Created by Victor Brito on 29/03/23.
//

import SwiftUI

@available(iOS 16.0, *)
/// Each interactive button has its structure due to its coordinator closure passed inside each action
/// /// This structure is responsible for creating the interactive button superimposed on the plane's wing and is responsible for initializing the entire flow of the scene.
struct FirstButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.present(sheet: .wingInfo)
        } label: {
            ButtonAnimation()
        }
    }
}
