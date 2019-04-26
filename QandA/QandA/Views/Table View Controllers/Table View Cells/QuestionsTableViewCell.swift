//
//  QuestionsTableViewCell.swift
//  QandA
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    var question: Question?{ //we are going to pass question in from the tableView controller.
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!

    private func updateViews(){
        guard let passedInQuestion = question else { return }
        //we have a legt question
        questionLabel.text = passedInQuestion.question
        askedLabel.text = passedInQuestion.asker
        otherLabel.text = passedInQuestion.answer
    }

}
