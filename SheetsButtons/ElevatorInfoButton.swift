//
//  ElevatorInfoButton.swift
//  
//
//  Created by Victor Brito on 30/03/23.
//
import Foundation
import SwiftUI

struct ElevatorInfoButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.dismissSheet()
            coordinator.push(.finalView)
        } label: {
            ButtonAnimation()
                .frame(width: 100, height: 100)
                .padding(.trailing, 350)
                .padding(.top, 400)
        }
    }
}
