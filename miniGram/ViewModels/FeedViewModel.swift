//
//  FeedViewModel.swift
//  miniGram
//
//  Created by Ashiq Uz Zoha on 20/5/23.
//

import Foundation
import UIKit
import Alamofire
import Kingfisher

class FeedViewModel {
    var dataSet: [FeedModel] = [
        /*
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "The inconsistency shows how a powerful early leader in AI art and synthetic media is designing rules for its product on the fly."),
        FeedModel(username: "ChatGPT", userPhoto: UIImage(named: "user2")!, contentImage: UIImage(named: "content2")!, contentText: "ChatGPT can generate amazing texts with AI. ChatGPT is a natural language processing tool driven by AI technology that allows you to have human-like conversations and much more with the chatbot. The language model can answer questions and assist you with tasks, such as composing emails, essays, and code."),
        FeedModel(username: "Reddit", userPhoto: UIImage(named: "user3")!, contentImage: UIImage(named: "content3")!, contentText: "Reddit threads are awesome if you are a reader!"),
        FeedModel(username: "Midjourney", userPhoto: UIImage(named: "user1")!, contentImage: UIImage(named: "content1")!, contentText: "Midjourney can generate amazing image with AI")
         */
    ]
    
    var feedSize: Int {
        return self.dataSet.count
    }
    
    func feedDataAtRow(row: Int) -> FeedModel {
        return self.dataSet[row]
    }
    
    func getPostsFromAPI (callback: @escaping () -> Void) {
        print("getPostsFromAPI")
      /*  AF.request(MinigramApp.apiBaseUrl + "/api/posts?populate=*").response { response in
            debugPrint(response)
        } */
        let url = MinigramApp.apiBaseUrl + "/ishtiaque-pial/json-server/posts"
        let parameters: [String: Any] = [:]
        let headers: HTTPHeaders = [
            "Authorization": MinigramApp.authorizationHeader
        ]
        AF.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: headers, interceptor: nil, requestModifier: nil).responseDecodable(of: PostResponse.self) { response in
            debugPrint(response)
            
            switch (response.result) {
                    case .success:
                        print("Validation Successful")
                        self.parsePostResponse(value: response.value)
                        callback()
                    case let .failure(error):
                        print(error)
            }
            
        }
    }
    
    private func parsePostResponse (value: PostResponse?) {
        self.dataSet = []
        if let postResponse = value {
            if let data = postResponse.data {
                for item in data {
                    if let content = item.attributes?.content {
                        print(content)
                        var authorUsername = ""
                        if let authorName = item.attributes?.author?.data?.attributes?.username {
                            authorUsername = authorName
                        }
                        var contentUrl = ""
                        if let url = item.attributes?.imageContent?.data?.attributes?.url {
                            contentUrl = url
                        }
                        
                        let postData = FeedModel(username: authorUsername, userPhoto: UIImage(), contentImageUrl: contentUrl, contentText: content)
                        self.dataSet.append(postData)
                    }
                }
            }
        }
    }
    
}
