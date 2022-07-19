//
//  HomeScreen.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import SwiftUI

struct HomeScreen: View {
    //just trial
    //@ObservedObject  var homeVM = HomeViewModel()
    
    
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Spacer().frame(width:10)
                    Text("Book Shelf")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        .foregroundColor(Color.blue)
                        .padding()
                }
            }

            BannerView()
            BookListView()

         //   DetailsScreen()
        
        }.navigationBarHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
