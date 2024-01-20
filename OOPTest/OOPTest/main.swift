//
//  main.swift
//  OOPTest
//
//  Created by Nat Kim on 2024/01/20.
//
// MARK: Allen - 객체지향의 4대 특징(89강) 
import Foundation

class Book {
    var name: String
    var price: Int
    var publisher: String
    var author: String
    var totalPage: Int
    
    init(
        name: String,
        price: Int,
        publisher: String,
        author: String,
        totalPage: Int) {
        self.name = name
        self.price = price
        self.publisher = publisher
        self.author = author
        self.totalPage = totalPage
    }
}

var bookCleanCode = Book(
    name: "클린코드",
    price: 30000,
    publisher: "인사이트",
    author: "Uncle Bob",
    totalPage: 600
)

struct Movie {
    var title: String
    var genre: String
    var mainActor: String
    var director: String
    var releaseDate: String
    
    init(title: String,
         genre: String,
         mainActor: String,
         director: String,
         releaseDate: String) {
        self.title = title
        self.genre = genre
        self.mainActor = mainActor
        self.director = director
        self.releaseDate = releaseDate
    }
}

var movie1 = Movie(
    title: "서울의 봄",
    genre: "역사",
    mainActor: "황정민",
    director: "몰라",
    releaseDate: "20231230"
)
