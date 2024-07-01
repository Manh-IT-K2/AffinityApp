//
//  CardViews.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 1/7/24.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(.test1)
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: cardHeight)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            UserInfoView()
                .padding(.horizontal)
        }
    }
}

private extension CardView {
    private var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    private var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
