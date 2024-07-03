//
//  CardStackView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) {
                card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
