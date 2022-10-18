//
//  Round.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import Foundation

struct Round: Hashable {
    let id: Int
    let playerMove: Moves
    let cpuMove: Moves
    let roundState: States
}
