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
    
    func update(question: Question, newQuestion: String, newAsker: String){
        question.question = newQuestion
        question.asker = newAsker
    }
    
    func delete(question: Question){
        guard let questionToDelete = questions.firstIndex(of: question) else { return }
        questions.remove(at: questionToDelete)
    }
    
}
