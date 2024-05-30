//
//  TopPartDeatilView.swift
//  TouchDown
//
//  Created by vinay Kumar ranjan on 28/05/24.
//

import SwiftUI

struct TopPartDeatilView: View {
    @State var isAnimation = false
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
               Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ??  sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimation ? -50 : -75)
            Spacer()
            
            //Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimation ? 0 : -45)

        })
        .onAppear( perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimation.toggle()
            }
        })
    }
}

struct TopPartDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDeatilView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
