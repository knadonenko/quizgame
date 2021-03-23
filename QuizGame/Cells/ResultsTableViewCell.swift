//
//  ResultsTableViewCell.swift
//  QuizGame
//
//  Created by Константин Надоненко on 21.03.2021.
//

import UIKit

class ResultsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
