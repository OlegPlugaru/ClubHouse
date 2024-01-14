//
//  UpcomingRoomModel.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import Foundation

struct UpcomingRoom: Identifiable {
    let id = UUID()
    let groupName: String?
    let roomName: String
    let date: Date
}

extension UpcomingRoom {
    static var dummyData: [UpcomingRoom] {
        [
        UpcomingRoom(groupName: "Tech Talks", roomName: "iOS interview Question 📝", 
                     date: Date(timeIntervalSince1970: 1614527128)),
        UpcomingRoom(groupName: nil, roomName: "Welcome to Clubhouse (Begginers Guide AMA) 🎉", 
                     date: Date(timeIntervalSince1970: 1614541528)),
        UpcomingRoom(groupName: nil, roomName: "Do you have Hoil? 👀", 
                     date: Date(timeIntervalSince1970: 1614548728000))
        ]
    }
}
