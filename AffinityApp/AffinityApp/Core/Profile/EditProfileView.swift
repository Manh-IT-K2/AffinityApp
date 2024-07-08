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
    @State private var bio = ""
    @State private var occupation = "Fighter"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
                    .padding()
                VStack(spacing : 24) {
                    VStack(alignment: .leading) {
                        Text("ABOUT ME")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        TextField("Add your bio", text: $bio, axis: .vertical)
                            .padding()
                            .frame(height: 64, alignment: .top)
                            .background(Color(.secondarySystemBackground))
                            .font(.subheadline)
                        
                        Text("OCCUPATION")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        HStack {
                            Image(systemName: "book")
                            Text("Occupation")
                            Spacer()
                            Text(occupation)
                                .font(.footnote)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    VStack(alignment: .leading){
                        Text("GENDER")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        HStack{
                            Text("Man")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                    VStack(alignment: .leading){
                        Text("SEXUAL ORIENTAION")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.leading)
                        HStack{
                            Text("Straight")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .imageScale(.small)
                        }
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .font(.subheadline)
                    }
                }
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
