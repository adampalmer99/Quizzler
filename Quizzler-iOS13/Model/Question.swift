//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Adam Palmer on 08/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    
    let text: String
    let answer: String
    
    //custom initialiser
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
