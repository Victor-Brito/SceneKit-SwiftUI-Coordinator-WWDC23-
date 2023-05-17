//
//  LateralPlane.swift
//  
//
//  Created by Victor Brito on 28/03/23.
//
import SwiftUI
import SceneKit

struct LateralPlane: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                SceneView(scene: SCNScene(named: "LateralPlane.scn"), options: [.autoenablesDefaultLighting])
                    .ignoresSafeArea()
                ZStack{
                    LateralButton()
                        .frame(width: 100, height: 100)
                        .position(x: geometry.size.width * 0.43, y: geometry.size.height * 0.68 )
                }
            }
            .background(Color.background)
            .navigationBarHidden(true)
            
        }
    }
}
