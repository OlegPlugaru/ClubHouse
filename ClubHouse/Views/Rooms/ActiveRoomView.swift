//
//  ActiveRoomView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct ActiveRoomView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: RoomViewModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                RoomHeaderView()
                    .padding(.bottom, 30)
                
                ScrollView {
                    HStack(alignment: .top) {
                        Text(viewModel.activeRoom.roomName)
                            .padding(.leading, 25)
                        Spacer()
                        Image
                            .ellipsis
                            .padding(.top, 10)
                            .padding(.trailing, 25)
                    }
                    .padding(.top, 15)
                    .foregroundColor(Color.textBlack)
                    .font(Font.Nunito.bold(size: 20))
                    
                    HostsView(people: viewModel.activeRoom.hosts)
                        .padding(.horizontal, 15)
                    
                    if !viewModel.activeRoom.followedBySpeaker.isEmpty {
                        OthersView(title: "Followed by the speakers", people: viewModel.activeRoom.followedBySpeaker)
                    }
                    
                    OthersView(title: "Others in the room", people: viewModel.activeRoom.othersInRoom)
                }
                .padding(.bottom, 110)
                .background(Color.cardBackground)
                .cornerRadius(37)
            }
            .padding(.top, 65)
            
            BottomRoomView { action in
                switch action {
                case .leave:
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    ActiveRoomView()
        .environmentObject(RoomViewModel())
}
