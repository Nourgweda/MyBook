//
//  BookList.swift
//  MyBook
//
//  Created by trianglz on 18/07/2022.
//

import Foundation

struct BookList : Codable {
    var status : String
    var copyright : String
    var num_results : Int
    var last_modified : String
    var results : [Result]
}

struct Result  : Codable  , Hashable{
    
    
    static func == (lhs: Result, rhs: Result) -> Bool {
        return lhs.dagger == rhs.dagger && lhs.dagger == rhs.dagger
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(dagger)
        hasher.combine(dagger)
    }

    
    var list_name : String
    var display_name : String
    var bestsellers_date : String
    var published_date : String
    var rank : Int
    var rank_last_week : Int
    var weeks_on_list : Int
    var asterisk : Int
    var dagger : Int
    var amazon_product_url : String
    var isbns : [Isbn]
    var book_details : [BookDetail]
    var reviews : [Review]
    
    
}

struct BookDetail : Codable , Hashable {
    
    static func == (lhs: BookDetail, rhs: BookDetail) -> Bool {
        return lhs.primary_isbn10 == rhs.primary_isbn10 && lhs.primary_isbn10 == rhs.primary_isbn10
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(primary_isbn10)
        hasher.combine(primary_isbn10)
    }
    
    
    
    var title: String
    var description: String
    var contributor: String
    var author: String
    var contributor_note: String
    var price: String
    var age_group: String
    var publisher: String
    var primary_isbn13: String
    var primary_isbn10: String
}

struct Isbn  : Codable {
    var isbn10: String
    var isbn13: String
}

struct Review  : Codable {
    var book_review_link: String
    var first_chapter_link: String
    var sunday_review_link: String
    var article_chapter_link: String
}
