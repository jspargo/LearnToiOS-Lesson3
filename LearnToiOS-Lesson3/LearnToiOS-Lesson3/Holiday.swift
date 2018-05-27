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
    var currency: Currency
    var emoji: String
    var continent: Continent
    
    init(title: String, country: String, currency: Currency, emoji: String, continent: Continent) {
        self.title = title
        self.country = country
        self.currency = currency
        self.emoji = emoji
        self.continent = continent
    }
    
    enum Currency: String {
        case GBP = "£"
        case EUR = "€"
        case USD = "$"
        case JPY = "¥"
        case AUS = "A$"
        case RUB = "₽"
    }
    
    enum Continent: String {
        case europe = "Europe"
        case northAmerica = "North America"
        case australia = "Australia"
        case asia = "Asia"
    }
}
