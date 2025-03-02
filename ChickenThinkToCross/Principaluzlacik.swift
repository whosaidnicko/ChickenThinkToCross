//
//  Principaluzlacik.swift
//  ChickenThinkToCross
//
//  Created by Nicolae Chivriga on 03/03/2025.
//

import SwiftUI


struct Principaluzlacik: View {
    var body: some View {
        ZStack {
            Image("etoogromnikmir")
                .resizable()
                .ignoresSafeArea()
            
            HStack {
                Image("chithinktcros")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                VStack {
                    NavigationLink {
                        JagainvuwiozView()
                    } label: {
                        Image("gainusoiwrs")
                    }

                    
                    
                    NavigationLink {
                        SetariotirView()
                    } label: {
                        Image("shureklohlos")
                    }

                    
                }
                
                NavigationLink {
                    RegulasView()
                } label: {
                    Image("intrebatoare")
                }

                
                
                Spacer()
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
}
import Foundation
import UIKit


func share(items: [Any]){
    let viewController = UIActivityViewController(activityItems: items, applicationActivities: nil)

    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    let window = windowScene?.windows.first

    window?.rootViewController?.present(viewController, animated: true)

    if UIDevice.current.userInterfaceIdiom == .pad {
        viewController.popoverPresentationController?.sourceView = window
        viewController.popoverPresentationController?.sourceRect = CGRect(x: UIScreen.main.bounds.width / 2.1 , y: UIScreen.main.bounds.height / 1.3, width: 200, height: 200)
    }
}
extension View {
    func animatiomdbstr() -> some View {
        self.modifier(Intersapbiqzapdive())
    }
}
