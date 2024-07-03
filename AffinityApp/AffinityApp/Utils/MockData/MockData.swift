//
//  MockData.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 3/7/24.
//

import Foundation

struct MockData {
    static let user: [UserModel] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "So Sad",
            age: 21,
            image: ["test1", "test2", "test3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "No No",
            age: 33,
            image: ["test1", "test2", "test3"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Naruto",
            age: 16,
            image: ["test1", "test2", "test3"]
        ),
    ]
}
