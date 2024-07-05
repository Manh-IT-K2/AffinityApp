//
//  UserInfoView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 1/7/24.
//

import SwiftUI

struct UserInfoView: View {
    
    @Binding var showProfileModal: Bool
    let user: UserModel
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(user.fullName)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                Spacer()
                Button{
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Actress | Witch")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundColor(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(showProfileModal: .constant(false),user: MockData.user[1])
}
