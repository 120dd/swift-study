//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by monosig on 2022/07/04.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text:String
    let answer:Bool
    init(q:String, a:Bool){
        self.text = q
        self.answer = a
    }
}
