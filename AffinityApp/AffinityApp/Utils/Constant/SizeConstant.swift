//
//  SizeConstant.swift
//  AffinityApp
//
//  Created by Q. Mạnh on 2/7/24.
//

import SwiftUI

struct SizeConstant {
    static var screenCutoff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
