//
//  NewView.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 18.01.2024.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        Text("🎉")
            .padding(5)
            .background(.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint, 
                    radius: 1,
                    x: 0,
                    y: 1)
    }
}

#Preview {
    NewView()
}
