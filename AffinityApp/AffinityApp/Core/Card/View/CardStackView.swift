//
//  CardStackView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModel) {
                card in
                CardView(model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
