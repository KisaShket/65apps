//
//  Networking.swift
//  65-1
//
//  Created by Miska  on 13/01/2020.
//  Copyright © 2020 Miska . All rights reserved.
//

import Foundation
import UIKit
class Networking {
    private let cache = NSCache<AnyObject,AnyObject>()
    
    func imageFetch(url: URL, complition: @escaping (UIImage?)->Void){
        if let image = cache.object(forKey: url as AnyObject) as? UIImage{
            complition(image)
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error{
                print(error)
                return
            }
            DispatchQueue.main.async {
                guard let data = data else {return}
                guard let image = UIImage(data:data) else {return}
                self.cache.setObject(image, forKey: url as AnyObject)
                complition(image)
                print("fetching")
            }
            
        }.resume()
    }
}
