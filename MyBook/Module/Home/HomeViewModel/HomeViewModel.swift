//
//  HomeViewModel.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation
import Alamofire

class HomeViewModel : ObservableObject {
    
    var api : NetworkAPIProtocol = NetworkAPI()
    @Published var bookList : [Result] = []
    @Published var bookDetailsArr : [BookDetail] = []
    
    
    init(){
        getAllBooks()
    }
    
    
    func getAllBooks (){
        api.getBooks { (result) in
            switch result {
            case .success(let response):
                self.bookList = response?.results ?? []
                for i in self.bookList {
                    self.bookDetailsArr.append(i.book_details[0])
                }
                
                
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "Unknown Error")
            }
        }
    }
    
    
    
    
}
