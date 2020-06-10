//
//  podcastTableViewCell.swift
//  DemoApp
//
//  Created by Toan on 6/8/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class podcastTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var timePodcast: UILabel!
    @IBOutlet weak var datPodcast: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
