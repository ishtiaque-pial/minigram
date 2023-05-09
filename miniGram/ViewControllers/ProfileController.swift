//
//  ProfileController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 7/5/23.
//

import UIKit

class ProfileController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var followButton: UIButton!
    
    var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.profileImageView.image = profileViewModel.profilePhoto
        self.profileImageView.makeImageViewRounded()
        
        self.followButton.addCornerToView(radius: 5.0)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
