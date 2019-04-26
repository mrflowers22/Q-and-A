//
//  AskQuestionTableViewController.swift
//  QandA
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    let questionController = QuestionController() //this is where we access what's inside this file.

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //add ths to reload the table view so that when a new queston or answer gets added, the table view will reflect these changes.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? QuestionsTableViewCell else { return UITableViewCell() }
        
        //Remember that you are using a tableViewCell so this function should pass an instance of Question to the cell.
        let questionToPass = questionController.questions[indexPath.row]
        cell.question = questionToPass
        
        // Configure the cell...

        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //remember to delete the Question (model) before deleting the row/cell.
            let questionToDelete = questionController.questions[indexPath.row]
            questionController.delete(question: questionToDelete)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
