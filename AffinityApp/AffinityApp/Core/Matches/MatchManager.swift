//
//  MatchManager.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 10/7/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: UserModel?
    
    func checkForMatch(withUser user: UserModel) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchedUser = user
        }
    }
}
