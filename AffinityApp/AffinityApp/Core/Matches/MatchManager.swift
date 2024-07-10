//
//  MatchManager.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 10/7/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    func checkForMatch(withUser user: UserModel) -> Bool {
        return Bool.random()
    }
}
