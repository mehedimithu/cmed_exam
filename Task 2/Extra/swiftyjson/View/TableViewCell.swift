//
//  TableViewCell.swift
//  swiftyjson

///  Created by Mehedi Mithu on 12/17/19.
//  Copyright © 2019 Mehedi Mithu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblArtist: UILabel!
    
    @IBOutlet var img: UIImageView!
    @IBOutlet var lblTrack: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
