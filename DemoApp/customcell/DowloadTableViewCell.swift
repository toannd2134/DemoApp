//
//  DowloadTableViewCell.swift
//  DemoApp
//
//  Created by Toan on 6/10/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class DowloadTableViewCell: UITableViewCell {

    @IBOutlet weak var ttimeDowload: UILabel!
    @IBOutlet weak var noteDowload: UILabel!
    @IBOutlet weak var nameDowload: UILabel!
    @IBOutlet weak var Dowloadimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
