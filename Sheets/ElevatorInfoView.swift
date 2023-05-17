//
//  ElevatorInfoView.swift
//  
//
//  Created by Victor Brito on 30/03/23.
//
import SwiftUI

struct ElevatorInfoView: View {
    var body: some View {
        ZStack{
            Color.sheetColor
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            ZStack{
                ElevatorInfoButton()
                    .padding(.leading, 700)
                    .padding(.top, 120)
                VStack{
                    Spacer()
                    Text("Elevator")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                    Text(TextInfos.elevator.rawValue)
                        .frame(width: 500, height: 300)
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}
