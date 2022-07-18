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
    
    
    
    func getAllBooks (){
        api.getBooks { (result) in
            switch result {
            case .success(let response):
                print("from view model \(String(describing: response))")
                
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "Unknown Error")
            }
        }
    }
    
    
    
    
}
