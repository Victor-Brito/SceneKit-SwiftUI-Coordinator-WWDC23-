//
//  FinalView.swift
//  
//
//  Created by Victor Brito on 18/04/23.
//
import SwiftUI
import SceneKit

struct FinalView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                SceneView(scene: SCNScene(named: "FinalView.scn"), options: [.autoenablesDefaultLighting])
                ZStack {
                    AboutMeButton()
                        .frame(width: 100, height: 100)
                        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.55 )
                }
            }
            .background(Color.background)
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}
