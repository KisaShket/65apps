//
//  File.swift
//  65-1
//
//  Created by Miska  on 12/01/2020.
//  Copyright © 2020 Miska . All rights reserved.
//

import Foundation
import UIKit

class TableView: UITableViewController{
    
    let networking = Networking()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let url = URL(string: "http://placehold.it/375x150?text=\(indexPath.row + 1)")
        if let url = url {
            downloadImage(withURL: url, forCell: cell)
            print(url)
        }
    }
    
    func downloadImage(withURL url: URL, forCell cell: UITableViewCell) {
        guard let cell = cell as? TableViewCell else { return }
        networking.imageFetch(url: url, complition:{ image  in
            DispatchQueue.main.async {
                cell.imageViewContainer.image = image
            }
            
        })
    }
}
