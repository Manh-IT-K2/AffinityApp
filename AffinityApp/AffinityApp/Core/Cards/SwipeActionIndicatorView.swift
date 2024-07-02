//
//  SwipeActionIndicatorView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 2/7/24.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    let screenCutoff: CGFloat
    
    var body: some View {
        HStack{
            Text("Like")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / screenCutoff))
            Spacer()
            Text("Nope")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .overlay{
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / screenCutoff) * -1)
        }
        .padding(40)
    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(20), screenCutoff: -1)
}
