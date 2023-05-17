//
//  LateralInfoView.swift
//  
//
//  Created by Victor Brito on 28/03/23.
//
import SwiftUI

struct LateralInfoView: View {
    var body: some View {
        ZStack{
            Color.sheetColor
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            ZStack{
                LateralInfoButton()
                    .padding(.leading, 700)
                    .padding(.top, 120)
                VStack{
                    Spacer()
                    Text("Aerodynamic Profile")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                    Text(TextInfos.lateral.rawValue)
                        .frame(width: 500, height: 300)
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}
