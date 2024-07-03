//
//  CardViewModel.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var cardModel = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService){
        self.service = service
    }
    
    func fetchCardModel() async {
        do {
            self.cardModel = try await service.fetchCardModel()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
}
