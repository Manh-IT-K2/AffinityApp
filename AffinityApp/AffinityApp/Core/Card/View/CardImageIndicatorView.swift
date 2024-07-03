//
//  CardImageIndicatorView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let curentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack {
            ForEach(0 ..< imageCount, id: \.self) {
                index in Capsule()
                    .foregroundStyle(curentImageIndex == index ? .white : .gray)
                    .frame(width: imageIndicatorWidth, height: 4)
                    .padding(.top, 8)
            }
        }
    }
}

private extension CardImageIndicatorView {
    var imageIndicatorWidth: CGFloat {
        return SizeConstant.cardWidth / CGFloat(imageCount) - 28
    }
}

#Preview {
    CardImageIndicatorView(curentImageIndex: 1, imageCount: 5)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
