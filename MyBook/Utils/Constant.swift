//
//  Constant.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation
struct Constants {

   static  let baseURL = "https://api.nytimes.com/svc/books/v3/"
   static  let APIkey = "GW56UeEjovaf36eaX2GvqHGbGZZGcaPT"
   static  let listKey = "hardcover-fiction"
    
    
}

struct ErrorMessages {
    static let genericError = "Something went wrong!"
    static let statusCode422 = "Error while creating request!"
    static let emailAndPhoneError = "You need to provide untaken email and phone!"
}
