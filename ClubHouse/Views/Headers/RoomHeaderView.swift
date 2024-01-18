//
//  RoomHeaderView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct RoomHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            Label("All rooms", systemImage: "chevron.down")
                .font(Font.Nunito.bold(size: 18))
            Spacer()
            Image
                .document
                .font(Font.Nunito.bold(size: 24))
            Image
                .profile_pic
                .resizable()
                .frame(width: 32, height: 32)
                .cornerRadius(11)
        }
        .foregroundColor(Color.textBlack)
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 15)
    }
}

#Preview {
    RoomHeaderView()
}
