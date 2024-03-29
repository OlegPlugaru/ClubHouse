//
//  FeedItem.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import Foundation

protocol Feed {}

struct FeedItem: Identifiable {
    let id = UUID()
    let item: Feed
}

// MARK: - Upcoming Room Model

struct UpcomingFeedItem: Feed {
    let upcoming: [UpcomingRoom]
}

// MARK: - Room Model

struct RoomFeedItem: Feed {
    let room: FeedRoom
}

// MARK: - Dummy Data Model

extension FeedItem {
    
    static var dummyData: [FeedItem] {
        
        var feedItem = [FeedItem]()
        
        feedItem.append(FeedItem(item: UpcomingFeedItem(upcoming: 
                                                            UpcomingRoom.dummyData)))
        
        FeedRoom
            .dummyData
            .forEach { item in
                
                feedItem.append(FeedItem(item: RoomFeedItem(room: item)))
            }
        
        return feedItem
    }
}

