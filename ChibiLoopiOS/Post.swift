//
//  Post.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 8/2/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class Post {
    
    var postId: String
    var userId: String
    var description: String
    var content: Content
    var timestamp: Date
    var likes: Int?
    var loops: Int?  // how many times the content has been listened to
    var reLoops: Int? // how many times the content has been shared
    
    init(postId: String, userId: String, description: String, content: Content,
         timestamp: Date, likes: Int?, loops: Int?, reLoops: Int?) {
        
        self.postId = postId
        self.userId = userId
        self.description = description
        self.content = content
        self.timestamp = timestamp
        self.likes = likes
        self.loops = loops
        self.reLoops = reLoops
    }
}
