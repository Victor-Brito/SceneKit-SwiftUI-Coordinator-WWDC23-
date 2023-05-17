//
//  WingInfoButton.swift
//  
//
//  Created by Victor Brito on 29/03/23.
//
import SwiftUI

struct WingInfoButton: View {
    @EnvironmentObject public var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.dismissSheet()
            coordinator.push(.lateralPlane)
        } label: {
            ButtonAnimation()
                .frame(width: 100, height: 100)
                .padding(.trailing, 350)
                .padding(.top, 400)
        }
    }
}
