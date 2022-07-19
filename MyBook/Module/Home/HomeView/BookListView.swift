//
//  BookListView.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import SwiftUI


struct BookListView: View {
    @ObservedObject  var homeVM = HomeViewModel()
    @State var isActiveToItem = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer().frame(width:10)
                Text("Recommended For You")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .foregroundColor(Color.blue)
                    .padding()
            }
        }
    
        List{
            if homeVM.bookDetailsArr.isEmpty{
                EmptyListView()
            }
            else{

                ForEach(homeVM.bookDetailsArr, id: \.self) { row in
                    NavigationLink(destination: DetailsScreen(bookItem: row)
                        .navigationBarBackButtonHidden(false)
                    ) {
//                    Section{
                        HStack{
                            Image("bookIcon")
                                .resizable()
                                .frame(width: 80, height: 80, alignment: .leading)
                                .cornerRadius(20)
                            
                            VStack(alignment: .leading){
                                Text("Title: \(row.title.lowercased())")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .frame( alignment: .leading)
                                    .foregroundColor(Color.orange)
                                
                                
                                Text("Author: \(row.author.lowercased())")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .frame( alignment: .leading)
                                    .foregroundColor(Color.blue)

                            }
                            
                        }

                    .onTapGesture {
                        print("\(row.title)")
                        print("\(row.description)")
                        isActiveToItem.toggle()
                    }

                    }
                }
            }
        }
        .refreshable {
            homeVM.getAllBooks()
        }
        

        
            
        
    }
        
        
    }



