//
//  CardViews.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 1/7/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    var body: some View {
        ZStack(alignment: .bottom){
            Image(.test1)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal)
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

//
private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value){
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        if abs(width) <= abs(screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

//
private extension CardView {
    
    var screenCutoff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.25
    }
}

#Preview {
    CardView()
}
