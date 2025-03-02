//
//  InapoiuBuotno.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 03/03/2025.
//

import SwiftUI


struct InapoiuBuotno: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            let generator = UIImpactFeedbackGenerator(style: .light)
                   generator.impactOccurred()
            self.dismiss()
        } label: {
            Image("owiubakcie")
        }

    }
}
