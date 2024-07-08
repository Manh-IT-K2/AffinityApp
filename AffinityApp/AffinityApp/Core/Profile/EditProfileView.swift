//
//  EditProfileView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 8/7/24.
//

import SwiftUI

struct EditProfileView: View {
    let user: UserModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.user[0])
}
