//
//  BannerView.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import SwiftUI

struct BannerView: View {
    
    let images = bannerArr
    @State var activeImageIndex = 0

    let imageSwitchTimer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            Image(bannerArr[activeImageIndex].imageBanner)
             .resizable()
             .cornerRadius(30)
             .frame(width: 350, height: 150)
             .overlay(
                     RoundedRectangle(cornerRadius: 30)
                         .stroke(.orange, lineWidth: 2)
                 )
                 .onReceive(imageSwitchTimer) { _ in
                 self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
             }

         }
     }
    }



