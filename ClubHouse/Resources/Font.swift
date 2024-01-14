//
//  Font.swift
//  ClubHouse
//
//  Created by Oleg Plugaru on 14.01.2024.
//

import SwiftUI

extension Font {
    struct Nunito {
        static func extraBold(size: CGFloat) -> Font {
            .custom("NunitoSans-ExtraBold", size: size)
        }
        
        static func bold(size: CGFloat) -> Font {
            .custom("NunitoSans-Bold", size: size)
        }
        
        static func semiBold(size: CGFloat) -> Font {
            .custom("NunitoSans-SemiBold", size: size)
        }
        
        static func regular(size: CGFloat) -> Font {
            .custom("NunitoSans-Regular", size: size)
        }
    }
}
