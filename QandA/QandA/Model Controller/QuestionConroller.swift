//
//  QuestionConroller.swift
//  QandA
//
//  Created by Michael Flowers on 4/25/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    func create(queston: String, and asker: String){
        let question = Question(question: queston, asker: asker)
        questions.append(question)
    }
    
    
}
