//
//  AnswerViewController.swift
//  QandA
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var questionController: QuestionController?
    var question: Question?

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumbitAnswer(_ sender: UIBarButtonItem) {
        guard let answer = answerTextView.text, !answer.isEmpty, let personWhoAnswered = answererTextField.text, !personWhoAnswered.isEmpty, let passedInQuestion = question else { return }
        questionController?.update(question: passedInQuestion, newAnswerer: personWhoAnswered, newAnswer: answer)
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews(){
        guard let passedInQuestion = question else { return }
        questionLabel.text = passedInQuestion.question
        askerLabel.text = passedInQuestion.asker
        answererTextField.text = passedInQuestion.answerer
        answerTextView.text = passedInQuestion.answer
        
        if passedInQuestion.answer == nil || passedInQuestion.answerer == nil {
            questionLabel.text = passedInQuestion.question
            askerLabel.text = passedInQuestion.asker
        }
    }
}
