//
//  ProfileViewModel.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 9/5/23.
//

import Foundation
import UIKit

class ProfileViewModel {
    
    var profilePhoto: UIImage {
        return UIImage(named: "messi")!
    }
    
    let dataSet: [FeedModel] = [
        /*
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "The inconsistency shows how a powerful early leader in AI art and synthetic media is designing rules for its product on the fly."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user2")!, contentImage: UIImage(named: "content2")!, contentText: "ChatGPT can generate amazing texts with AI. ChatGPT is a natural language processing tool driven by AI technology that allows you to have human-like conversations and much more with the chatbot. The language model can answer questions and assist you with tasks, such as composing emails, essays, and code."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user3")!, contentImage: UIImage(named: "content3")!, contentText: "Reddit threads are awesome if you are a reader!"),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "Midjourney can generate amazing image with AI"),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "The inconsistency shows how a powerful early leader in AI art and synthetic media is designing rules for its product on the fly."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user2")!, contentImage: UIImage(named: "content2")!, contentText: "ChatGPT can generate amazing texts with AI. ChatGPT is a natural language processing tool driven by AI technology that allows you to have human-like conversations and much more with the chatbot. The language model can answer questions and assist you with tasks, such as composing emails, essays, and code."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user3")!, contentImage: UIImage(named: "content3")!, contentText: "Reddit threads are awesome if you are a reader!"),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "Midjourney can generate amazing image with AI")
         */
    ]
    
    let dataSetTagged: [FeedModel] = [
        /*
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "The inconsistency shows how a powerful early leader in AI art and synthetic media is designing rules for its product on the fly."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user2")!, contentImage: UIImage(named: "content2")!, contentText: "ChatGPT can generate amazing texts with AI. ChatGPT is a natural language processing tool driven by AI technology that allows you to have human-like conversations and much more with the chatbot. The language model can answer questions and assist you with tasks, such as composing emails, essays, and code."),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user3")!, contentImage: UIImage(named: "content3")!, contentText: "Reddit threads are awesome if you are a reader!"),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "Midjourney can generate amazing image with AI")
         */
    ]
    
    var numberOfPosts: Int {
        return self.dataSet.count
    }
    
    func postAtRow(itemIndex: Int) -> FeedModel {
        return self.dataSet[itemIndex]
    }
    
}
