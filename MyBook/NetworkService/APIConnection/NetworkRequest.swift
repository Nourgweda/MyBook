//
//  NetworkRequest.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation
import Alamofire

enum NetworkRequest{
    
    case getBooks

}

extension NetworkRequest : TargetType {
    var baseURL: String {
        switch self {
        default : return "https://api.nytimes.com/svc/books/v3/lists.json?api-key=GW56UeEjovaf36eaX2GvqHGbGZZGcaPT&list=hardcover-fiction"
        }
    }
    
    var path: String {
        switch self {
            
        case .getBooks:
            return ""

        }
    }
    
    var method: HTTPMethod {
        switch self {
            
        case .getBooks:
            return .get

        }
    }
    
    var task: Task {
        switch self {
            
        case .getBooks:
            return .requestPlain

        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [
                "":""
            ]
        }
    }
    
}



