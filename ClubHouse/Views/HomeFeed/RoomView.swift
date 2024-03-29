//
//  RoomView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 17.01.2024.
//

import SwiftUI

struct RoomView: View {
    
    let room: FeedRoom
    
    private let size: CGFloat = 38
    
    var body: some View {
        VStack(alignment: .leading) {
            if let groupName = room.groupName {
                CurrentGroupView(groupName: groupName)
            }
            Text(room.roomName)
                .font(Font.Nunito.bold(size: 16))
                .foregroundColor(.textBlack)
            
            HStack(alignment: .top) {
                if room.hostPics.count > 1 {
                    FeedPicView(pic: room.hostPics.first!)
                        .overlay(FeedPicView(pic: room.hostPics.last!)
                            .offset(x: 16, y: 16))
                } else {
                    FeedPicView(pic: room.hostPics.first!)
                }
                
                VStack(alignment: .leading, spacing: 3) {
                    ForEach(room.participants, id: \.self) { person in
                        Text("\(person) 💬")
                    }
                    .font(Font.Nunito.bold(size: 16))
                    .foregroundColor(Color.textBlack)
                    
                    HStack(spacing: 3) {
                        Text(room.numOfParticipants.description)
                            .padding(.trailing, 5)
                        Image.person
                        Text("/")
                            .padding(.horizontal, 5)
                        Text(room.numOfHosts.description)
                            .padding(.trailing, 5)
                        Image.chatBubble
                    }
                    .font(Font.Nunito.semiBold(size: 14))
                    .foregroundColor(Color.customGrey)
                }
                .padding(.leading, 30)
            }
            .padding(.leading, 30)
        }
        .padding(.vertical, 17)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.cardBackground)
        .cornerRadius(19)
        .shadow(color: .cardShadowTint, 
                radius: 1,
                x: 0,
                y: 1)
        .padding(.horizontal, 15)
    }
}

// MARK - FeedPicView

struct FeedPicView: View {
    private let size: CGFloat = 38
    let pic: String
    var body: some  View {
        Image(pic)
            .resizable()
            .frame(width: size, height: size)
            .cornerRadius(14)
    }
}

#Preview {
    RoomView(room: FeedRoom.dummyData[0])
}
