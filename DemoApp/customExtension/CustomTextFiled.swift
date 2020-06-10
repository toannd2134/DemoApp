//
//  CustomTextFiled.swift
//  DemoApp
//
//  Created by Toan on 6/5/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import Foundation
import UIKit
class customTextField : UITextField {
    
   var placeHolder = NSMutableAttributedString()
      init(_ plachoder: String, _ backgroundColor: UIColor,_ textColor: UIColor, _ plachoderColor: UIColor, _ frame: CGRect) {
          super.init(frame: frame)
        self.textColor = textColor
          self.placeholder = plachoder
          self.backgroundColor = backgroundColor
          placeHolder = NSMutableAttributedString(string: plachoder, attributes: [:])
          placeHolder.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: plachoder.count))
          self.attributedPlaceholder = placeHolder
      }
    
    required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
       
            let bottomLine = CALayer()
            bottomLine.frame = CGRect(x: 0.0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
            self.borderStyle = UITextField.BorderStyle.none
            self.layer.addSublayer(bottomLine)
        
    }
}
