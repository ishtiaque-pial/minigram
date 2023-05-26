//
//  PostController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 23/5/23.
//

import UIKit

class PostController: UIViewController {

    var post: FeedModel!
    var titleValue: String!
    
    @IBOutlet weak var userPhotoImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var contentTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = self.titleValue
        print("post title => \(self.post.contentText)")
        
        
        userPhotoImageView.image = self.post.userPhoto
        userNameLabel.text = self.post.username
        contentImageView.image = self.post.contentImage
        contentTextLabel.text = self.post.contentText
        
        userPhotoImageView.makeImageViewRounded()
    }
    
    // Task - implement this screen
}
