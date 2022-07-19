//
//  DetailsScreen.swift
//  MyBook
//
//  Created by trianglz on 19/07/2022.
//

import SwiftUI

struct DetailsScreen: View {
    
    @State var bookItem : BookDetail?
    
    var body: some View {
        VStack {
            Image("")
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            Image("bookIcon")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle().stroke(Color.orange, lineWidth: 5))
                .offset(y: -330)
                .padding(.bottom, -260)

            VStack(alignment: .leading) {
                Text(bookItem?.title ?? "")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame( alignment: .center)
                    .foregroundColor(Color.blue)

                HStack {
                    Text("By: \(bookItem?.author ?? "")")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color.orange)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About The Book")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text("\(bookItem?.description ?? "")")
                    .foregroundColor(Color.orange)
                    .fontWeight(.medium)
                
                Divider()

                Text("Published By")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text("\(bookItem?.publisher ?? "")")
                    .foregroundColor(Color.orange)
                    .fontWeight(.medium)
                
            }
            .padding()
            .cornerRadius(35)

            Spacer()
            Spacer()
            
        
        
        }.navigationBarBackButtonHidden(false)
        
    }
}


