//
//  ContentView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showProfile: Bool?
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottom) {
                
                NavigationLink(
                    destination: ProfileView(),
                    tag: true,
                    selection: $showProfile) {
                        EmptyView()
                    }
                
                VStack {
                    
                    HomeHeaderView { action in
                        switch action {
                        case .profile:
                            showProfile = true
                        }
                    }
                    
                    ScrollView {
                        
                        LazyVStack(spacing: 16) {
                            
                            ForEach(FeedItem.dummyData) { feedItem in
                                
                                switch feedItem.item {
                                    
                                case is UpcomingFeedItem:
                                    
                                    let upcomingFeedItem = feedItem.item as! UpcomingFeedItem
                                    UpcomingRoomsView(upcomingRooms: upcomingFeedItem.upcoming)
                                    
                                case is RoomFeedItem:
                                    
                                    let roomFeedItem = feedItem.item as! RoomFeedItem
                                    RoomView(room: roomFeedItem.room)
                                    
                                default:
                                    EmptyView()
                                }
                            }
                        }
                        .padding(.top, 20)
                        .padding(.bottom, 150)
                    }
                }
                .padding(.top, 75)
                
                BottomHomeView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
        }
        .onAppear {
            showProfile = false
        }
    }
}

#Preview {
    ContentView()
}
