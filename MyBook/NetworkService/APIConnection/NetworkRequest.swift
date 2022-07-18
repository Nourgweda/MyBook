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
        default :
            return Constants.baseURL
        }
    }
    
    var path: String {
        switch self {
            
        case .getBooks:
            return "lists.json"
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
            return .requestParameters(parameters: ["api-key" : Constants.APIkey,"list":Constants.listKey], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [
                "n":"nour"
            ]
        }
    }
    
}



