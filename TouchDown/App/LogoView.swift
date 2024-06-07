//
//  LogoView.swift
//  TouchDown
//
//  Created by vinay Kumar ranjan on 22/05/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("TOUCH")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            
        } //HStack
    }
}

#Preview {
    LogoView()
}

