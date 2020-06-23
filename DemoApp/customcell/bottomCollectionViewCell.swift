//
//  bottomCollectionViewCell.swift
//  DemoApp
//
//  Created by Toan on 6/8/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class bottomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var note: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
     self.backgroundColor = UIColor(red: 0.33, green: 0.33, blue: 0.33, alpha: 1.00)
       
    }

}
