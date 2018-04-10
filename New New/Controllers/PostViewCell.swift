//
//  PostViewCell.swift
//  New New
//
//  Created by Bryan Brotonel on 2018-03-23.
//  Copyright © 2018 Bryan Brotonel. All rights reserved.
//

import UIKit

class PostViewCell: UITableViewCell {
    @IBOutlet weak var cardView: CardView!
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var soundcloudLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
