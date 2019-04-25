//
//  Question.swift
//  QandA
//
//  Created by Michael Flowers on 4/25/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation

class Question {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answere: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        //answer and answerer are optional because there wll not be an answer  or answerer for a question as soon as it's created.
    }
}

extension Question: Equatable {
    static func == (lhs: Question, rhs: Question) -> Bool {
        return lhs.question == rhs.question && lhs.asker == rhs.asker && lhs.answer == rhs.answer && lhs.answerer == rhs.answerer
    }
    
    
}
