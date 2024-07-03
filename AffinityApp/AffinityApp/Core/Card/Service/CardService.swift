//
//  CardService.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

struct CardService {
    func fetchCardModel() async throws -> [CardModel]{
        let user = MockData.user
        return user.map({
            CardModel(user: $0)
        })
    }
}
