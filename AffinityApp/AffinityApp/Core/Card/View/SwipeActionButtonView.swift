//
//  SwipeActionButtonView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 4/7/24.
//

import SwiftUI

struct SwipeActionButtonView: View {
    var body: some View {
        HStack(spacing: 32){
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }
            .frame(width: 48, height: 48)
            
            Button {
                
            } label: {
                Image(systemName: "heart.fill")
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 48, height: 48)
                            .shadow(radius: 6)
                    }
            }
            .frame(width: 48, height: 48)
        }
    }
}

#Preview {
    SwipeActionButtonView()
}
