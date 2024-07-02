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
    @State private var currentImageIndex = 0
    @State private var mockImage = [
        "test1",
        "test2",
        "test3"
    ]
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack(alignment: .top){
                Image(mockImage[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay(ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: mockImage.count))
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView()
                .padding(.horizontal)
        }
        .frame(width: SizeConstant.cardWidth, height: SizeConstant.cardHeight)
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
        if abs(width) <= abs(SizeConstant.screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

#Preview {
    CardView()
}
