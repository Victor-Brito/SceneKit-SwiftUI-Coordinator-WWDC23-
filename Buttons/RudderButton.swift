//
//  RudderButton.swift
//  
//
//  Created by Victor Brito on 29/03/23.
//
import SwiftUI

@available(iOS 16.0, *)
/// Each interactive button has its structure due to its coordinator closure passed inside each action
/// This button is superimposed on the plane's rudder
struct RudderButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    @State var showButton = false
    
    var body: some View {
        VStack {
            if showButton {
                Button {
                    coordinator.present(sheet: .rudderInfo)
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
