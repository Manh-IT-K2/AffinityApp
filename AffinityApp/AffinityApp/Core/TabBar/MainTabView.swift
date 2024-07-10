//
//  MainTabView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 1/7/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
           CardStackView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            Text("Inbox View")
                .tabItem { Image(systemName: "bubble") }
                .tag(2)
            CurrentUserProfileView(user: MockData.user[0])
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)

    }
}

#Preview {
    MainTabView()
        .environmentObject(MatchManager())
}
