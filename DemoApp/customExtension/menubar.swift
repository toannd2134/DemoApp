//
//  menubar.swift
//  DemoApp
//
//  Created by Toan on 6/16/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
@IBDesignable
class menubar: UIView {
    var Selector = UIView()
    var buttons = [UIButton]()
    @IBInspectable
    var borderWidth : CGFloat = 0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    var boderCollor : UIColor = UIColor.clear {
        didSet{
            layer.borderColor = boderCollor.cgColor
        }
    }
    @IBInspectable
    var commanSeprateButtonTitle : String = "" {
        didSet{
            updateView()
        }
    }
    @IBInspectable
    var textColor : UIColor = .white{
        didSet{
            updateView()
        }
    }
    
    func updateView() {
        buttons.removeAll()
        subviews.forEach { (view) in
            view.removeFromSuperview()
        }
        let butonTitle = commanSeprateButtonTitle.components(separatedBy: ",")
        for butonTitle in butonTitle{
            /*
             et attributed = NSMutableAttributedString(string: "Have account? Log In")
             attributed.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributed.length))
             attributed.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00) , range: NSRange(location: 0, length:    attributed.length))
             let font = UIFont.systemFont(ofSize: 14)
             attributed.addAttribute(.font, value: font, range: NSRange(location: 0, length: attributed.length))
             
             buttonLG.setAttributedTitle(attributed, for: .normal)
             buttonLG.addTarget(self, action: #selector(onDismiss), for: .touchUpInside)*/
            let button = UIButton(type: .system)
            let attribute = NSMutableAttributedString(string: butonTitle)
            
             attribute.addAttribute(.foregroundColor, value: UIColor.white, range:NSRange(location: 0, length: attribute.length))
            
            
            attribute.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attribute.length))
           
            let font = UIFont.systemFont(ofSize: 14)
            attribute.addAttribute(.font, value: font, range: NSRange(location: 0, length: attribute.length))
            button.setAttributedTitle(attribute, for: .normal)
            button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
            buttons.append(button)
        }
        
        
        
        let sv = UIStackView(arrangedSubviews: buttons)
        sv.axis = .horizontal
        sv.alignment = .center
        sv.distribution = .fillEqually
        addSubview(sv)
        
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        sv.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        sv.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        sv.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    
    override func draw(_ rect: CGRect) {
        
        
        
    }
    @objc func buttonTap(button : UIButton){
        let butonTitle = commanSeprateButtonTitle.components(separatedBy: ",")
        for i in butonTitle {
               
            }
        }
    }


