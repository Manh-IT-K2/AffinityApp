//
//  CurrentUserProfileView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 6/7/24.
//

import SwiftUI

struct CurrentUserProfileHeaderView: View {
    let user : UserModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image(user.image[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .background {
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 128, height: 128)
                            .shadow(radius: 10)
                        
                    }
                Image(systemName: "pencil")
                    .imageScale(.small)
                    .foregroundColor(.gray)
                    .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                    }
                    .offset(x: -8, y: 10)
            }
            Text("\(user.fullName), \(user.age)")
                .font(.title2)
                .fontWeight(.light)
        }
        .frame(height: 240)
    }
}

#Preview {
    CurrentUserProfileHeaderView(user: MockData.user[0])
}
