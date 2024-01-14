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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
                    HStack {
                        Text(groupName.uppercased())
                            .font(Font.Nunito.bold(size: 8))
                            .foregroundColor(Color.textBlack)
                        
                        Image
                            .home
                            .font(Font.Nunito.bold(size: 10))
                            .foregroundColor(Color.green)
                    }
                    .padding(.top, 1)
                }
                
                Text(upcomingRoom.roomName)
                    .lineLimit(1)
                    .font(Font.Nunito.bold(size: 14))
                    .foregroundColor(Color.textBlack)
            }
        }
    }
}


#Preview {
    UpcomingRoomsView(upcomingRooms: [UpcomingRoom.dummyData[0]])
}

#Preview {
    GroupRoomView(upcomingRoom: UpcomingRoom.dummyData[0])
        .previewLayout(.sizeThatFits)
}
