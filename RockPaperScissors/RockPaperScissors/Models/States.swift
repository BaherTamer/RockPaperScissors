//
//  States.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import Foundation
import SwiftUI

enum States: String {
    case win = "You Won!"
    case lose = "You Lost!"
    case draw = "Draw!"
}

extension States {
    var color: Color {
        switch self {
        case .win:
            return .green
        case .lose:
            return .red
        case .draw:
            return .orange
        }
    }
}
