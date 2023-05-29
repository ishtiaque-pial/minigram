//
//  HomeController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 7/5/23.
//

import UIKit
import Alamofire
import Kingfisher

class HomeController: UIViewController {
    
    

    @IBOutlet weak var homeTableView: UITableView!
   
    let feedViewModel = FeedViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeTableView.dataSource = self
        self.homeTableView.delegate = self
        
        self.homeTableView.estimatedRowHeight = 350.0
        self.homeTableView.rowHeight = UITableView.automaticDimension
        
        //self.getPostsFromAPI()
        self.feedViewModel.getPostsFromAPI{
            self.homeTableView.reloadData()
        }
    }

    // what happens when a row is clicked
}

extension HomeController: UITableViewDataSource {
    
    // how many sections
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // how many rows in a particular section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.feedViewModel.feedSize
    }
    
    // how does each row look like
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("section = \(indexPath.section)")
        print("row = \(indexPath.row)")
        
        var feedCell: FeedCell
        
        if let mFeedCell = tableView.dequeueReusableCell(withIdentifier: FeedCell.reuseIdentifier) as? FeedCell {
            feedCell = mFeedCell
        } else {
            let feedCellFromBundle = Bundle.main.loadNibNamed(FeedCell.reuseIdentifier, owner: self)?.first as! FeedCell
            feedCell = feedCellFromBundle
        }
        
        let feedData = self.feedViewModel.feedDataAtRow(row: indexPath.row)
        feedCell.userPhotoImageView.image = feedData.userPhoto
        feedCell.userNameLabel.text = feedData.username
        // feedCell.contentImageView.image = feedData.contentImage
        if let url = URL(string: feedData.contentImageUrl) {
            feedCell.contentImageView.kf.setImage(with: url)
        }
        feedCell.contentTextLabel.text = feedData.contentText
        
        feedCell.userPhotoImageView.makeImageViewRounded()
        
        return feedCell
    }
}

extension HomeController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let rowDescription = "section = \(indexPath.section), row = \(indexPath.row)"
        let alertController = UIAlertController(title: "Table Row Clicked", message: rowDescription, preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "Okay", style: .default)
        alertController.addAction(cancelButton)
        self.present(alertController, animated: true)
        
    }
}
