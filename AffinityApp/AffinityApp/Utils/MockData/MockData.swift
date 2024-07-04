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
            fullName: "Landcaping",
            age: 33,
            image: ["bg1", "bg2", "bg3", "bg4"]
        )
    ]
}
