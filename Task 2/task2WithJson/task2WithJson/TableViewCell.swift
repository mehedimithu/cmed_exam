//
//  TableViewCell.swift
//  task2WithJson
//
//  Created by Mehedi Mithu on 12/18/19.
//  Copyright © 2019 Mehedi Mithu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblname: UILabel!
    @IBOutlet var lblcapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
