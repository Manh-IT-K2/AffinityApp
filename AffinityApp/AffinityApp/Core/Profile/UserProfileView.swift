//
//  UserProfile.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 5/7/24.
//

import SwiftUI

struct UserProfileView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    let user: UserModel
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("\(user.age)")
                    .font(.title2)
                Spacer()
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }
            }
            .padding(.horizontal)
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        
                        Image(user.image[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstant.cardWidth, height: SizeConstant.cardHeight)
                            .overlay{
                                ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: user.image.count)
                            }
                        CardImageIndicatorView(curentImageIndex: currentImageIndex, imageCount: user.image.count)
                    }
                    VStack (alignment: .leading, spacing: 12){
                        Text("About me")
                            .fontWeight(.semibold)
                        Text("Some test bio for now..")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .font(.subheadline)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                VStack (alignment: .leading, spacing: 12) {
                    Text("Essentials")
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "person")
                        Text("Woman")
                        Spacer()
                    }
                    .font(.subheadline)
                    HStack {
                        Image(systemName: "arrow.down.forward.and.arrow.up.backward.circle")
                        Text("Straight")
                        Spacer()
                    }
                    .font(.subheadline)
                    HStack {
                        Image(systemName: "book")
                        Text("Actress")
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.user[0])
}
