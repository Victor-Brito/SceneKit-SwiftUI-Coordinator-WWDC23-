//
//  File.swift
//  
//
//  Created by Victor Brito on 28/03/23.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
/// The coordinator View is our view responsible for creating the Navigation Stack that initializes the paths and screens and configures the display model
public struct CoordinatorView: View {
    
    @StateObject public var coordinator = Coordinator()
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(interaction: .gameView)
                .navigationDestination(for: Interactions.self) {Interactions in
                    coordinator.build(interaction: Interactions).environmentObject(coordinator)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
        }
        .environmentObject(coordinator)
    }
}
