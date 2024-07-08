//
//  ProfileImageGridView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 8/7/24.
//

import SwiftUI

struct ProfileImageGridView: View {
    let user: UserModel
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16){
            ForEach(0 ..< 6) {
                index in if index < user.image.count {
                    Image(user.image[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(.red))
                            .offset(x: 4, y: 4)
                    }
                }
            }
        }
    }
}

//
private extension ProfileImageGridView {
    var columns: [GridItem] {
        [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    }
    var imageWidth: CGFloat {
        return 110
    }
    var imageHeight: CGFloat {
        return 160
    }
}
#Preview {
    ProfileImageGridView(user: MockData.user[0])
}
