//
//  CommentNetworkService.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//

import Foundation

class CommentNetworkService{
    private init(){}
    
    static func getComments(completion: @escaping (GetCommentResponse) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else {print("Couldn't create URL"); return}
    
        NetworkService.shared.getData(url: url) { json in
            var commentResponse = try? GetCommentResponse(json: json)
            guard let commentResponse = commentResponse else { return }
            
            completion(commentResponse)
        }
    }
}
