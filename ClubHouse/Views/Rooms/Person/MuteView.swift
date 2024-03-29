//
//  MuteView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct MuteView: View {
    var body: some View {
        Image
            .mute
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint,
                    radius: 1,
                    x: 0.0,
                    y: 1)
    }
}

#Preview {
    MuteView()
}
