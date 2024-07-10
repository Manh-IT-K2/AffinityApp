//
//  UserMatchView.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 9/7/24.
//

import SwiftUI

struct UserMatchView: View {
    @Binding var show: Bool
    @EnvironmentObject var matchManager: MatchManager
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black.opacity(0.7))
                .ignoresSafeArea()
            VStack(spacing: 120) {
                VStack{
                    Image(.itsamatch)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 150)
                    if let matchedUser = matchManager.matchedUser {
                        Text("You and \(matchedUser.fullName) have liked each other.")
                            .foregroundStyle(.white)
                    }
                }
                HStack(spacing: 16) {
                    Image(MockData.user[0].image[0])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay{
                            Circle()
                                .stroke(.white, lineWidth: 2)
                                .shadow(radius: 4)
                        }
                    if let matchedUser = matchManager.matchedUser {
                        Image(matchedUser.image[0])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay {
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .shadow(radius: 4)
                            }
                    }
                }
                VStack(spacing: 16){
                    Button("Send Message"){
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.red)
                    .clipShape(Capsule())
                    
                    Button("Keep Swiping"){
                        show.toggle()
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(.clear)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.white, lineWidth: 1)
                            .shadow(radius: 4)
                    }
                }
            }
        }
    }
}

#Preview {
    UserMatchView(show: .constant(true))
        .environmentObject(MatchManager())
}
