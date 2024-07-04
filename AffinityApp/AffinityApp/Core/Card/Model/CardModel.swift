//
//  CardModel.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

struct CardModel {
    let user: UserModel
}

extension CardModel: Identifiable, Hashable {
    var id: String {
        return user.id
    }
}
    
