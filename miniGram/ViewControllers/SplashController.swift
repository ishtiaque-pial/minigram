//
//  SplashController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 29/4/23.
//

import UIKit

class SplashController: UIViewController {
    
    @IBOutlet var appNameLabel: UILabel!
    
    var splashViewModel: SplashViewModel = SplashViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // self.splashViewModel = SplashViewModel()
        self.appNameLabel.text = self.splashViewModel.appName()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func onClickButton () {
        print("Button was clicked.")
    }
}
