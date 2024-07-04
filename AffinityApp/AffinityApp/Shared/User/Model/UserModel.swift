//
//  UserModel.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

struct UserModel: Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var image: [String]
}
