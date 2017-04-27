//
//  EventTableViewCell.swift
//  TableViewTest
//
//  Created by Cntt20 on 4/26/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    //
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
