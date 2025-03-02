//
//  SetariotirView.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 03/03/2025.
//

import SwiftUI
import StoreKit

struct SetariotirView: View {
    var body: some View {
        ZStack {
            Image("etoogromnikmir")
                .resizable()
                .ignoresSafeArea()
            
            Image("seting")
                .overlay {
                    HStack(spacing: 10.2) {
                        Button {
                            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                                SKStoreReviewController.requestReview(in: scene)
                                let generator = UIImpactFeedbackGenerator(style: .rigid)
                                       generator.prepare() // Prepares the generator for use.
                                       generator.impactOccurred()
                            }
                        } label: {
                            Image("rtus")
                        }

                       
                        
                        Button {
                            if let url = URL(string: "https://apps.apple.com/app/id6742725278") {
                                DispatchQueue.main.async { share(items: [url]) }
                            }
                        } label: {
                            Image("shr")
                        }

                       
                    }
                    .padding(.top, 20)
                }
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: InapoiuBuotno())
    }
}
