//
//  AboutMeView.swift
//  
//
//  Created by Victor Brito on 18/04/23.
//
import SwiftUI

struct AboutMeView: View {
    var body: some View {
        ZStack{
            Color.sheetColor
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Pilot")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.black)
                Text(TextInfos.aboutMe.rawValue)
                    .frame(width: 500, height: 300)
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                Spacer()
                Image("PlaneBox")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 270, height: 270)
            }
        }
    }
}
