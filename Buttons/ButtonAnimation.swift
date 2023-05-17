//
//  ButtonAnimation.swift
//  
//
//  Created by Victor Brito on 30/03/23.
//
import SwiftUI

/// This structure is responsible for creating the entire body of our interactive click button.
struct ButtonAnimation: View {
    @State private var scale: CGFloat = 1.0
    @State private var pulse: CGFloat = 1.0
    
    var body: some View {
        ZStack{
            ZStack{
                Circle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color.buttonPulse)
                    .padding()
                    .scaleEffect(pulse)
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 0.7).repeatForever(autoreverses: true)) {
                            self.pulse = 1.6
                        }
                    }
            }
            
            Circle()
                .foregroundColor(Color.buttonPulse)
                .padding()
                .scaleEffect(scale)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true)) {
                        self.scale = 1.2
                    }
                }
        }
    }
}
