//
//  RudderInfoButton.swift
//  
//
//  Created by Victor Brito on 29/03/23.
//
import SwiftUI

struct RudderInfoButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.dismissSheet()
            coordinator.push(.elevatorPlane)
        } label: {
            ButtonAnimation()
                .frame(width: 100, height: 100)
                .padding(.trailing, 350)
                .padding(.top, 400)
        }
    }
}
