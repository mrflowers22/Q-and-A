//
//  AskQuestionsViewController.swift
//  QandA
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class AskQuestionsViewController: UIViewController {
    
    var questionController: QuestionController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitQuestionButton(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text, !name.isEmpty, let question = questionTextView.text, !question.isEmpty else { return }
        questionController?.create(queston: question, asker: name)
        navigationController?.popViewController(animated: true)
    }

}
