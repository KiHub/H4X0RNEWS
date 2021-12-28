//
//  NetworkManager.swift
//  H4X0RNEWS
//
//  Created by  Mr.Ki on 28.12.2021.
//

import Foundation

class NetworkManager {
    func fetchData()  {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, responce, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                       let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                  
                    
                    
                }
            }
            task.resume()
            
        }
        
    }
}
