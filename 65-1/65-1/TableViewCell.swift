//
//  TableViewCell.swift
//  65-1
//
//  Created by Miska  on 12/01/2020.
//  Copyright © 2020 Miska . All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var shadowViewContainer: UIView!
    @IBOutlet weak var imageViewContainer: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupShadowView()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    private func setupShadowView() {
           shadowViewContainer.backgroundColor = UIColor.clear
           shadowViewContainer.layer.shadowOpacity = 0.5
           shadowViewContainer.layer.shadowColor = UIColor.black.cgColor
           shadowViewContainer.layer.shadowRadius = 2.6
           shadowViewContainer.layer.shadowOffset = CGSize(width: 3, height: 3)
       }
}
