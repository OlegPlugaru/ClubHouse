//
//  ProfileView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 17.01.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let profilePicSize: CGFloat = 76
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                ProfileHeaderView { action in
                    switch action {
                    case .back:
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                Group {
                    Image
                        .profile_pic
                        .resizable()
                        .frame(width: profilePicSize,
                               height: profilePicSize)
                        .cornerRadius(30)
                    
                    Text("Oleg Plugaru")
                        .font(Font.Nunito.bold(size: 16))
                    
                    Text("@olegplugaru_md")
                        .font(Font.Nunito.bold(size: 12))
                        .padding(.top, 1)
                    
                    HStack {
                        HStack(spacing: 0) {
                            Text("675")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("followers")
                                .font(Font.Nunito.semiBold(size: 12))
                        }
                        .padding(.trailing, 30)
                        
                        HStack(spacing: 0) {
                            Text("600")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("following")
                                .font(Font.Nunito.semiBold(size: 12))
                        }
                        .padding(.trailing, 30)
                    }
                    .padding(.top, 15)
                    
                    Text("iOS Developer | Working @Midnight Works.\n Github link: \n https://github.com/OlegPlugaru")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 14))
                    
                    HStack(alignment: .top) {
                        Image("person_0")
                            .resizable()
                            .frame(width: 38, height: 38)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading) {
                            Text("Joined 18 Dec 2020")
                                .font(Font.Nunito.regular(size: 12))
                            Text("Nominated by ")
                                .font(Font.Nunito.regular(size: 12)) +
                            Text("Jane Doe")
                                .font(Font.Nunito.bold(size: 12))
                        }
                    }
                }
                .foregroundColor(Color.textBlack)
                .padding(.horizontal, 15)
                Spacer()
            }
            .padding(.top, 65)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    ProfileView()
}
