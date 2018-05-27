//
//  Holiday.swift
//  LearnToiOS-Lesson3
//
//  Created by Jack Spargo on 27/05/2018.
//  Copyright © 2018 Jack Spargo. All rights reserved.
//

import Foundation

struct Holiday {
    var title: String
    var country: String
    var currency: String
    var emoji: String
    
    init(title: String, country: String, currency: String, emoji: String) {
        self.title = title
        self.country = country
        self.currency = currency
        self.emoji = emoji
    }
}
