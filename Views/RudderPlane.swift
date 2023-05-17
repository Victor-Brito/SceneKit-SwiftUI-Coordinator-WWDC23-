//
//  RudderPlane.swift
//  
//
//  Created by Victor Brito on 29/03/23.
//
import SwiftUI
import SceneKit

struct RudderPlane: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                SceneView(scene: SCNScene(named: "RudderPlane.scn"), options: [.autoenablesDefaultLighting])
                    .ignoresSafeArea()
                ZStack{
                    RudderButton()
                        .frame(width: 100, height: 100)
                        .position(x: geometry.size.width * 0.50, y: geometry.size.height * 0.25 )
                }
            }
            .background(Color.background)
            .navigationBarHidden(true)
        }
    }
}
