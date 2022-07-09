//
//  Comment.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//
// https://jsonplaceholder.typicode.com/posts/1/comments


import Foundation

struct Comment : Codable{
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    // this is an 'failable initializer'
    // when creating an object, to get it's value non optional, we need to use obj!
    // var url = URL(string: "https...")!
    init?(dict:[String:AnyObject]){
        guard let postId = dict["postId"] as? Int,
        let id = dict["id"] as? Int,
        let name = dict["name"] as? String,
        let email = dict["email"] as? String,
        let body = dict["body"] as? String
        else{
                print("Couldn't read data, returning nil")
                return nil
        }
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
        
    }
}




//    "postId": 1,
//    "id": 1,
//    "name": "id labore ex et quam laborum",
//    "email": "Eliseo@gardner.biz",
//    "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
