//
//  RoomViewModel.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import Foundation

class RoomViewModel: ObservableObject {
    private(set) var activeRoom: FeedRoom = FeedRoom.dummyData[0]
    
    func setActive(_ room: FeedRoom) {
        self.activeRoom = room
    }
}
