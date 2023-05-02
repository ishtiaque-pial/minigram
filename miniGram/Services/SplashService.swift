//
//  SplashService.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 29/4/23.
//

import Foundation

class SplashService {
    
    func getAppName () -> SplashModel {
        
        return SplashModel(name: MinigramApp.appName)
    }
    
}
