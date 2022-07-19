//
//  BannerList.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation
struct BannerList : Identifiable {
    var id  = UUID()
    var imageBanner : String
}

var bannerArr = [
    BannerList(imageBanner: "coverOne"),
    BannerList(imageBanner: "coverTwo"),
    BannerList(imageBanner: "coverThree"),
    BannerList(imageBanner: "coverFour"),
    BannerList(imageBanner: "coverFive")
]
