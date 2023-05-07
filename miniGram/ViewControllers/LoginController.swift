//
//  LoginController.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 2/5/23.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validate () -> Bool {
        guard let email = self.emailField.text, isValidEmail(email: email) else {
            return false
        }
        return true
    }
    
    func isValidEmail (email: String) -> Bool {
        // write your email validation code, return true if valid
        return true
    }
    

    @IBAction func onClickLoginButton () {
        print("login button was clicked")
        
        let validated = self.validate()
        if validated == false {
            return 
        }
        
        if let homeTabBarController = self.storyboard?.instantiateViewController(withIdentifier: MinigramApp.homeTabBarController) as? UITabBarController {
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                if let sceneDelegate = windowScene.delegate as? SceneDelegate {
                    sceneDelegate.window?.rootViewController = homeTabBarController
                }
            }
        }
    }

}
