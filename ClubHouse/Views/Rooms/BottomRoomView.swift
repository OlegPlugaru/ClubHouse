//
//  BottomRoomView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct BottomRoomView: View {
    
    enum BottomRoomViewActions {
        case leave
    }
    
    typealias BottomRoomActionHandler = (_ action: BottomRoomViewActions) -> Void
    
    let handler: BottomRoomActionHandler
    
    internal init(handler: @escaping BottomRoomView.BottomRoomActionHandler) {
        self.handler = handler
    }
    
    var body: some View {
        HStack(spacing: 22) {
            Button {
                handler(.leave)
            } label: {
                Text("✌🏻 Leave quietly")
                    .font(Font.Nunito.bold(size: 16))
                    .foregroundColor(Color.customRed)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 8)
                    .background(Color.customLightGray)
                .cornerRadius(18)
            }
            Spacer()
            Image
                .plus
                .font(Font.Nunito.semiBold(size: 24))
                .padding(8)
                .background(Color.customLightGray)
                .clipShape(Circle())
            
            Image
                .handRaised
                .font(Font.Nunito.semiBold(size: 24))
                .padding(4)
                .background(Color.customLightGray)
                .clipShape(Circle())
        }
        .padding(.horizontal, 15)
        .padding(.top, 10)
        .frame(maxWidth: .infinity,
               maxHeight: 100,
               alignment: .top)
        .background(Color.cardBackground)
    }
}

#Preview {
    BottomRoomView { _ in }
}
