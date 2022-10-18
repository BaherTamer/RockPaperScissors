//
//  GameTitle.swift
//  RockPaperScissors
//
//  Created by Baher Tamer on 06/10/2022.
//

import SwiftUI

struct GameTitle: View {
    var body: some View {
        VStack {
            Text("Rock Paper Scissors")
                .font(.title.weight(.black))

            Text("Choose a move")
                .font(.title3.weight(.semibold))
                .foregroundColor(.secondary)
        }
        .padding(.bottom)
    }
}

struct GameTitle_Previews: PreviewProvider {
    static var previews: some View {
        GameTitle()
            .previewLayout(.sizeThatFits)
    }
}
