//
//  Siwozboptext.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 03/03/2025.
//

import SwiftUI

struct Siwozboptext: View {
    private let text = "Loading..."

    var body: some View {
        ZStack {
          
            HStack(spacing: 0) {
                ForEach(Array(text.enumerated()), id: \.offset) { index, character in
                    Text(String(character))
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .waveAnimation(index: index)
                }
            }
        }
    }
}
