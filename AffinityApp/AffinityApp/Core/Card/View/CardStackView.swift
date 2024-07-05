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
        NavigationStack {
            VStack (spacing: 16) {
                ZStack {
                    ForEach(viewModel.cardModel) {
                        card in
                        CardView(viewModel: viewModel, model: card)
                    }
                }
                if !viewModel.cardModel.isEmpty {
                    SwipeActionButtonView(viewModel: viewModel)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(.logoApp)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160)
                }
        }
        }
//        .onChange(of: viewModel.cardModel){
//            oldValue, newValue in
//            print("DEBUG: old value count is \(oldValue.count)")
//            print("DEBUG: new value count is \(newValue.count)")
//        }
    }
}

#Preview {
    CardStackView()
}
