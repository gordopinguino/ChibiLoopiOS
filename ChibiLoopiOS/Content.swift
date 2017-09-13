//
//  Content.swift
//  ChibiLoopiOS
//
//  Created by Vanessa Flores on 8/2/17.
//  Copyright © 2017 GordoPinguino. All rights reserved.
//

import UIKit

class Content {
    
    var contentId: String
    var contentTitle: String
    var userId: String
    var fileName: String
    var contentType: ContentType
    var contentCategory: ContentCategory
    var timestamp: Date
    var title: String
    var length: String
    
    init(contentId: String, contentTitle: String, userId: String, fileName: String,
         contentType: ContentType, contentCategory: ContentCategory, timestamp: Date,
         title: String, length: String) {
        
        self.contentId = contentId
        self.contentTitle = contentTitle
        self.userId = userId
        self.fileName = fileName
        self.contentType = contentType
        self.contentCategory = contentCategory
        self.timestamp = timestamp
        self.title = title
        self.length = length
    }
    
    enum ContentType {
        case dialogue, sound, other
    }
    
    enum ContentCategory {
        case whispering, reading, storytelling, softspoken, accent,
            ambient, tapping, scratching, typing, crinkling, eating,
            chewing, rubbing, writing, drawing, water

    }
    
    
}
