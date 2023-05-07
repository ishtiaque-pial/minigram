//
//  LoginController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 2/5/23.
//

import UIKit

class LoginController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickLoginButton () {
        print("login button was clicked")
        
        if let homeTabBarController = self.storyboard?.instantiateViewController(withIdentifier: MinigramApp.homeTabBarController) as? UITabBarController {
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                if let sceneDelegate = windowScene.delegate as? SceneDelegate {
                    sceneDelegate.window?.rootViewController = homeTabBarController
                }
            }
        }
    }

}
