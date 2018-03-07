//
//  questionData.swift
//  PersonalityQuiz
//
//  Created by Amy Drelicharz on 3/7/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers : [Answer]
}

enum ResponseType {
    case single,multiple,ranged
}

struct Answer {
    var text : String
    var type : AnimalType
}

enum AnimalType : Character {
    case dog = "🐶", rabbit = "🐰", turtle = "🐢", cat = "🐱"
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surrond yourself with people you love, and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy dong things on your own terms."
        case .rabbit:
            return "You love everthing that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
