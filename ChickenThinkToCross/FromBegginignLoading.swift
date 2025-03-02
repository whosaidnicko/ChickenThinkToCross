//
//  FromBegginignLoading.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 02/03/2025.
//

import SwiftUI
import Lottie


struct FromBegginignLoading: View {
    @State var votanacinaian: Bool = false
    @State var miuhals: Bool = false
    var body: some View {
        ZStack {
            Image("etoogromnikmir")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: Principaluzlacik(), isActive: self.$miuhals)
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Siwozboptext()
                }
                .padding()
            }
            HStack {
                Image("chithinktcros")
                    .resizable()
                    .scaledToFit()                    .offset(y: votanacinaian ? 0 : -UIScreen.main.bounds.height)
                    .animation(Animation.bouncy.delay(0.1), value: self.votanacinaian)
                
                Spacer()
                
                LottieView(animation: .named("puiusikapr"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 125, height: 125)
                    .scaleEffect(self.votanacinaian ? 1 : 0)
                    .animation(Animation.bouncy.delay(0.15), value: self.votanacinaian)
                
            }
            .padding()
                
        }
        .animatiomdbstr()
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.votanacinaian = true
                let generator = UIImpactFeedbackGenerator(style: .rigid)
                       generator.prepare() // Prepares the generator for use.
                       generator.impactOccurred()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    self.miuhals = true
                }
            }
        }
    }
}

