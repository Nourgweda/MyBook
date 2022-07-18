//
//  HomeScreen.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import SwiftUI

struct HomeScreen: View {
    //just trial
    @ObservedObject  var homeVM = HomeViewModel()
    
    
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button {
                print("anything")
                homeVM.getAllBooks()
            } label: {
                Text("press here")
                    .font(.largeTitle)
            }

        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
