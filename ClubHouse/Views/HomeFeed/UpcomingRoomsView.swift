//
//  UpcomingRoomsView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import SwiftUI

struct UpcomingRoomsView: View {
    let upcomingRooms: [UpcomingRoom]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(upcomingRooms) { room in
                GroupRoomView(upcomingRoom: room)
            }
        }
        .padding(.vertical, 15)
        .padding(.leading, 35)
        .padding(.trailing, 15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.secondaryBackground)
        .cornerRadius(18)
        .padding(.horizontal, 15)
    }
}

struct GroupRoomView: View {
    let upcomingRoom: UpcomingRoom
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Text(upcomingRoom.date, style: .time)
                .font(Font.Nunito.semiBold(size: 10))
                .foregroundColor(Color.textYellow)
            
            VStack(alignment: .leading) {
                
                if let groupName = upcomingRoom.groupName {
                    CurrentGroupView(groupName: groupName)
                }
                
                Text(upcomingRoom.roomName)
                    .lineLimit(1)
                    .font(Font.Nunito.bold(size: 14))
                    .foregroundColor(Color.textBlack)
            }
        }
    }
}

// MARK: - CurrentGroupView
struct CurrentGroupView: View {
    let groupName: String
    
    var body: some View {
        HStack {
            Text(groupName.uppercased())
                .font(Font.Nunito.bold(size: 8))
                .foregroundColor(Color.textBlack)
            
            Image
                .home
                .font(Font.Nunito.bold(size: 10))
                .foregroundColor(.green)
        }
        .padding(.top, 1)
    }
}

#Preview {
    UpcomingRoomsView(upcomingRooms: UpcomingRoom.dummyData)
        .previewLayout(.sizeThatFits)
}

#Preview {
    GroupRoomView(upcomingRoom: UpcomingRoom.dummyData[0])
        .previewLayout(.sizeThatFits)
}
