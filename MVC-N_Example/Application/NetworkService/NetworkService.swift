//
//  NetworkService.swift
//  MVC-N_Example
//
//  Created by test on 09.07.2022.
//

import Foundation

class NetworkService{
    private init(){}
    
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()){
        let session = URLSession.shared
        
        session.dataTask(with: url) { data, response, error in
            guard let data = data else{ return }
            
            var json = try? JSONSerialization.jsonObject(with: data, options: [])
            guard let json = json else{
                print("Error decoding")
                return
            }
            print(json)
            
            DispatchQueue.main.async {
                completion(json)
            }
        }.resume()
    }
}
