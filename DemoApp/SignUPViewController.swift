//
//  SignUPViewController.swift
//  DemoApp
//
//  Created by Toan on 6/5/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit
import Stevia
class SignUPViewController: UIViewController {
    var EmailTexField : customTextField = {
        let textFiled = customTextField("Email", UIColor.clear, UIColor.white, UIColor.plachodderColor(), CGRect.zero)
        
        
        return textFiled
    }()
    var reenterTexFiled : customTextField = {
        
        let textFiled = customTextField("Re-enter e-mail", UIColor.clear, UIColor.white, UIColor.plachodderColor(), CGRect.zero)
        
        return textFiled
    }()
    var PasswordTextFiled : customTextField = {
        
        let textFiled = customTextField("Choose password", UIColor.clear, UIColor.white, UIColor.plachodderColor(), CGRect.zero)
        textFiled.isSecureTextEntry = true
        return textFiled
    }()
    var BirthTextFiled : customTextField = {
        
        let textFiled = customTextField("Date of birth", UIColor.clear, UIColor.white, UIColor.plachodderColor(), CGRect.zero)
        
        return textFiled
    }()
    var noteLabel : customLabel = {
        var note = customLabel(CGRect.zero, "  By signing up you are argree to PRODPRO's Tems and Codition of Use, Privacy Policy and Mobile Terms", titleColor: UIColor.white, numberOfLabel: 0, textAlightment: NSTextAlignment.center, font: 12 )
        note.textColor = UIColor.white
        return note
    }()
    var orlabel : customLabel = {
        let label = customLabel(CGRect.zero,"Or", titleColor: UIColor.white, numberOfLabel: 0, textAlightment: NSTextAlignment.center, font: 13)
        label.textAlignment = .center
        return label
    }()
    var SignUpButton : CustomButton = {
        let button = CustomButton("Sign Up", UIColor.white, CGRect.zero, UIColor.backgroundColor())
        
        button.addTarget(self, action: #selector(pushSignUp), for: .touchUpInside)
        return button
    }()
    var FaceBookButton : CustomButton = {
        let button = CustomButton("Sign in with FaceBook", UIColor.FacebookColor(), CGRect.zero, UIColor.white)
        
        return button
    }()
    let datePicker  = UIDatePicker()
    var selectTextField : UITextField?
    let notifi : NSNotification! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyBroad(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHidenKeyBroad(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        EmailTexField.delegate = self
        reenterTexFiled.delegate = self
        PasswordTextFiled.delegate = self
        BirthTextFiled.delegate = self
        view.sv([EmailTexField,
                 reenterTexFiled,
                 PasswordTextFiled,
                 BirthTextFiled,
                 noteLabel,
                 SignUpButton,
                 orlabel,
                 FaceBookButton])
        setup()
        creatDatePicker()
        
    }
    
    @objc func pushSignUp(){
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "tabar")
        vc.modalPresentationStyle = .fullScreen
      
        self.present(vc, animated: true, completion: nil)
    }
    @objc func willShowKeyBroad(_ notifi : NSNotification) {
        if let keyBroadSize = (notifi.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue{
            if let selectTextField = selectTextField {
                if  selectTextField.frame.origin.y > view.frame.height - keyBroadSize.height - selectTextField.bounds.height {
                    self.view.frame.origin.y = 0
                    self.view.frame.origin.y -= keyBroadSize.height + 300
                }
            }
        }
        
    }
    @objc func willHidenKeyBroad(_ notifi : NSNotification) {
        self.view.frame.origin.y = 0
    }
    func creatDatePicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneBt = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(addDate))
        toolbar.setItems([doneBt], animated: true)
        BirthTextFiled.inputAccessoryView = toolbar
        BirthTextFiled.inputView = datePicker
        datePicker.datePickerMode = .date
    }
    @objc func addDate(){
        let formatDate = DateFormatter()
        formatDate.dateStyle = .medium
        formatDate.timeStyle = .none
        formatDate.dateFormat = "dd/MM/yyyy"
        
        BirthTextFiled.text = "\(formatDate.string(from: datePicker.date))"
        self.view.endEditing(true)
    }
    func setup(){
        view.layout(
            250,
            |-25-EmailTexField-25-|,
            30,
            |-20-reenterTexFiled-25-|,
            30,
            |-20-PasswordTextFiled-25-|,
            30,
            |-20-BirthTextFiled-25-|,
            10,
            |-30-noteLabel-30-|,
            20,
            |-30-SignUpButton-30-| ~ 50,
            10,
            |-30-orlabel-30-| ~ 10,
            10,
            |-30-FaceBookButton-30-| ~ 50
        )
    }
}
extension SignUPViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case EmailTexField :
            reenterTexFiled.becomeFirstResponder()
        case reenterTexFiled :
            PasswordTextFiled.becomeFirstResponder()
        case PasswordTextFiled :
            BirthTextFiled.becomeFirstResponder()
        default:
            textField.becomeFirstResponder()
        }
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        
        
        selectTextField = textField
        
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == EmailTexField {
            textField.text = ""
        }else if textField == reenterTexFiled {
            textField.text = ""
        }else if textField == PasswordTextFiled {
            textField.text = ""
        }else {
            textField.text = ""
        }
    }
}
