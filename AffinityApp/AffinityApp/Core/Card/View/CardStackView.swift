//
//  CardStackView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import SwiftUI

struct CardStackView: View {
    @EnvironmentObject var matchManager: MatchManager
    @State private var showMatchView = false
    @StateObject var viewModel = CardViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            ZStack {
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
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView {
                    UserMatchView(show: $showMatchView)
                }
            }
            .animation(.easeInOut, value: showMatchView)
            .onReceive(matchManager.$matchedUser){ user in
                showMatchView = user != nil
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(.logoApp)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150)
                }
            }
        }
    }
}

#Preview {
    CardStackView()
        .environmentObject(MatchManager())
}
