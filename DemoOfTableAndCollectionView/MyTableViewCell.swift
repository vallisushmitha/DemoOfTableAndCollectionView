//
//  MyTableViewCell.swift
//  DemoOfTableAndCollectionView
//
//  Created by kvanaMini1 on 20/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet var breedImages: UIImageView!
    @IBOutlet var nameImages: UILabel!

  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
