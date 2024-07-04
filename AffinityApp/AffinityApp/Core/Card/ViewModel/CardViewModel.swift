//
//  CardViewModel.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

@MainActor
class CardViewModel: ObservableObject {
    @Published var cardModel = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService){
        self.service = service
        Task {
            await fetchCardModel()
        }
    }
    
    func fetchCardModel() async {
        do {
            self.cardModel = try await service.fetchCardModel()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
    
    func removeCard(_ card: CardModel) {
        guard let index = cardModel.firstIndex(where: { $0.id == card.id}) else { return }
        cardModel.remove(at: index)
    }
}
