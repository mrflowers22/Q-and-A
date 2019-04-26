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
    
    func create(queston: String, asker: String){
        let question = Question(question: queston, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, newAnswerer: String, newAnswer: String){
        question.answerer = newAnswerer
        question.asker = newAnswer
    }
    
    func delete(question: Question){
        guard let questionToDelete = questions.firstIndex(of: question) else { return }
        questions.remove(at: questionToDelete)
    }
    
}
