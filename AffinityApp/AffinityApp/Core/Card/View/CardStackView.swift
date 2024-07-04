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
                CardView(viewModel: viewModel, model: card)
            }
        }
        .onChange(of: viewModel.cardModel){
            oldValue, newValue in
            print("DEBUG: old value count is \(oldValue.count)")
            print("DEBUG: new value count is \(newValue.count)")
        }
    }
}

#Preview {
    CardStackView()
}
