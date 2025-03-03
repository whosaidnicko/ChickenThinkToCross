//
//  JagainvuwiozView.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 03/03/2025.
//

import SwiftUI
import Lottie

struct JagainvuwiozView: View {
    @State var goqahide: Bool = false
    var body: some View {
        ZStack {
            Image("etoogromnikmir")
                .resizable()
                .ignoresSafeArea()
            
            if !goqahide {
                LottieView(animation: .named("pungusikcudois"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 144, height: 144)
            }
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/go-chicken-go/")!) {
                goqahide = true
                let sqizbty = UIImpactFeedbackGenerator(style: .heavy)
                sqizbty.prepare() //
                sqizbty.impactOccurred()
            }
            .cornerRadius(10)
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: InapoiuBuotno())
    }
}
