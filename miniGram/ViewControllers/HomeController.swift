//
//  HomeController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 7/5/23.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var logo1ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)

        let lbgImage = UIImage(named: "home")?.withRenderingMode(.alwaysTemplate)
        
        let lbg1Image = UIImage(named: "profile")?.withRenderingMode(.alwaysTemplate)
        
        
        logoImageView.image = lbgImage
        logoImageView.tintColor = UIColor.cyan
        
        logo1ImageView.image = lbg1Image
        logo1ImageView.tintColor = customColor
    
    }


}
