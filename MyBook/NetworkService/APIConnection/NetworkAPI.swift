//
//  NetworkAPI.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation
import Alamofire

protocol NetworkAPIProtocol {
    func getBooks(completion: @escaping(Swift.Result<BookList?, NSError>) -> Void)
}

class NetworkAPI: BaseAPI<NetworkRequest>, NetworkAPIProtocol {
    
    func getBooks(completion: @escaping(Swift.Result<BookList?, NSError>) -> Void)
   {
       self.fetchData(target: .getBooks, responseClass: BookList.self) { (result) in
           completion(result)
           //just for trial then dont forget to remove it
           //print("result from network layer \(result)")
       }

    }
}
