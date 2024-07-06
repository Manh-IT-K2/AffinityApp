//
//  CurrentUserProfileView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 7/7/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: UserModel
    
    var body: some View {
        NavigationStack {
            List {
                // header view
                CurrentUserProfileHeaderView(user: user)
                
                // account info
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(user.fullName)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text("sosad@gmail.com")
                    }
                }
                
                // legal
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                // logout
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here...")
                    }
                }
                .foregroundColor(.red)
                
                // Delete
                Section {
                    Button("Delete Account") {
                        print("DEBUG: Delete account here...")
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.user[0])
}
