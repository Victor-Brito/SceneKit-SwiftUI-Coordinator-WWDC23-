//
//  ElevatorPlane.swift
//  
//
//  Created by Victor Brito on 30/03/23.
//
import SwiftUI
import SceneKit

struct ElevatorPlane: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                SceneView(scene: SCNScene(named: "ElevatorPlane.scn"), options: [.autoenablesDefaultLighting])
                    .ignoresSafeArea()
                ZStack{
                    ElevatorButton()
                        .frame(width: 100, height: 100)
                        .position(x: geometry.size.width * 0.37, y: geometry.size.height * 0.26 )
                }
            }
            .background(Color.background)
            .navigationBarHidden(true)
        }
    }
}
