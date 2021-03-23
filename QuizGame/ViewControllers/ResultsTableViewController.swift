//
//  ResultsTableViewController.swift
//  QuizGame
//
//  Created by Константин Надоненко on 21.03.2021.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath) as! ResultsTableViewCell
        
        let result = Game.shared.results[indexPath.row]
        
        cell.resultsLabel.text = "\(result.date) \(String(format: "%.1f", result.score))"
        
        return cell
        
    }

}
