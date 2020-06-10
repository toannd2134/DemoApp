//
//  custtomButton.swift
//  DemoApp
//
//  Created by Toan on 6/6/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit
class CustomButton : UIButton {
    
    init(_ title: String, _ backgroundColor: UIColor, _ frame: CGRect,_ textcolor : UIColor) {
        
       super.init(frame: frame)
        self.setTitleColor(textcolor, for: .normal)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
       
        
    }
    
     required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
      }
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
