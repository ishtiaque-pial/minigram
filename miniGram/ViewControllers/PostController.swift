//
//  PostController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 23/5/23.
//

import UIKit

class PostController: UIViewController {

    var post: FeedModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "My Post"
        print("post title => \(self.post.contentText)")
    }
    
    // Task - implement this screen
}
