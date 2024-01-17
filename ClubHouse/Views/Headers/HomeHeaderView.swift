//
//  HomeHeaderView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import SwiftUI

struct HomeHeaderView: View {
    
    enum HomeHeaderActions {
        case profile
    }
    
    typealias HomeHeaderActionsHandler = (_ action: HomeHeaderActions) -> Void
    
    let handler: HomeHeaderActionsHandler
    
    init(handler: @escaping HomeHeaderView.HomeHeaderActionsHandler) {
        self.handler = handler
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image.search
            Spacer()
            Image.invite
            Image.calendar
            Image.notificationBell
            
            Button(action : {
                handler(.profile)
            }, label: {
                Image.profile_pic
                    .resizable()
                    .frame(width: 32, height: 32)
                .cornerRadius(11)
            })
        }
        .font(Font.Nunito.bold(size: 24))
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.horizontal, 15)
    }
}

#Preview {
    HomeHeaderView { _ in }
        .previewLayout(.sizeThatFits)
}
