//
//  topCollectionViewCell.swift
//  DemoApp
//
//  Created by Toan on 6/7/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class topCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var bacgroundImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        logoImg.layer.cornerRadius = logoImg.frame.height/2
        bacgroundImg.layer.cornerRadius = 20
      
    }

}
