//
//  WingInfoView.swift
//  
//
//  Created by Victor Brito on 28/03/23.
//
import SwiftUI

struct WingInfoView: View {
    var body: some View {
        ZStack{
            Color.sheetColor
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            ZStack{
                WingInfoButton()
                    .padding(.leading, 700)
                    .padding(.top, 120)
                VStack{
                    Spacer()
                    Text("Wings")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                    Text(TextInfos.wing.rawValue)
                        .frame(width: 500, height: 300)
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                    Spacer()
                }
            }
        }
    }
}
