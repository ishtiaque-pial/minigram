//
//  FeedCell.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 20/5/23.
//

import UIKit

class FeedCell: UITableViewCell {
    
    static let reuseIdentifier = "FeedCell"
    
    @IBOutlet weak var userPhotoImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
