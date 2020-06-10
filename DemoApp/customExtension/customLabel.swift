//
//  customLabel.swift
//  DemoApp
//
//  Created by Toan on 6/6/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit
class customLabel : UILabel {
    init( _ frame : CGRect , _ title : String , titleColor : UIColor , numberOfLabel : Int , textAlightment : NSTextAlignment , font : CGFloat ){
        super.init(frame : frame)
        self.text = title
        self.font = UIFont(name: self.font.fontName, size: font)
        self.numberOfLines = numberOfLabel
        self.textColor = textColor
        self.textAlignment = textAlignment
        
    }
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
}
