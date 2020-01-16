//
//  Network.swift
//  65-3
//
//  Created by Miska  on 15/01/2020.
//

import Foundation
import Alamofire

//protocol Net {
//    func getRepo(nickName: String, completion: @escaping (Repositories?) -> Void)
//}

class Network{
    
    
    func getRepo(nickName: String, completion: @escaping ([[String:Any]]?) -> Void) {
        guard let url = URL(string: "https://api.github.com/users/\(nickName)/repos") else { return }
        AF.request(url).validate().responseJSON{ response in
            switch response.result{
            case .success(let data):
                guard let repos = data as? [[String:Any]] else{
                    return
                }
                completion(repos)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}



