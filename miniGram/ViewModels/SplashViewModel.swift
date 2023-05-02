//
//  SplashViewModel.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 29/4/23.
//

import Foundation

class SplashViewModel {
    
    init() {
        
    }
    
    func appName () -> String {
        let service = SplashService()
        return service.getAppName().name
    }
}
