//
//  ViewController.swift
//  PLHLabel
//
//  Created by Nikolas Omelianov on 3/12/19.
//  Copyright © 2019 Nikolas Omelianov. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    let plhtext = "XXXX-XXXX-XXXX"
    var label = UILabel()
    var tfield = UITextField()
    let rect = CGRect(x: 0, y: 0, width: 175, height: 40)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfield = UITextField(frame: rect)
        tfield.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        label = UILabel(frame: rect)
        tfield.center = self.view.center
        tfield.backgroundColor = .white
        label.textColor = UIColor.black
        label.center = tfield.center
        label.backgroundColor = .clear
//        self.view.addSubview(label)
        self.view.addSubview(tfield)
        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func textFieldDidChange(_ textField: UITextField) {
//        if let text = ("\(tfield.text) + \(label.text?.dropFirst((tfield.text?.count)!))") {
        let attrs1 = [NSAttributedString.Key.foregroundColor : UIColor.clear]
        
        let attrs2 = [NSAttributedString.Key.foregroundColor : UIColor.gray]
        
        let attributedString1 = NSMutableAttributedString(string:"Drive", attributes:attrs1)
        
        let attributedString2 = NSMutableAttributedString(string:"safe", attributes:attrs2)
        
        attributedString1.append(attributedString2)
//        self.lblText.attributedText = attributedString1
        let numb = tfield.text!.count
        let plh = plhtext.dropFirst(numb)
        let addText = String(plh)
        let text = tfield.text! + " " + addText
        let ssg = NSMutableAttributedString.init(string: "HI RE", attributes: [NSAttributedString.Key.strokeColor : UIColor.green])
        let hhg = NSMutableAttributedString.init(string: ",WHERE?", attributes: [NSAttributedString.Key.strokeColor : UIColor.blue])
        ssg.append(hhg)
        label.attributedText = attributedString1
//        let myMutableString = NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.font :UIFont(name: "Georgia", size: 10.0)!])
//        myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location:0,length:0))
//        label.attributedText = myMutableString
//        label.attributedText?.attributedSubstring(from: NSRangeFromString(tfield.text!))
        
    }
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        var plholder = label.text?.dropFirst((tfield.text?.count)!)
//        label.text = ("\(tfield.text) + \(label.text?.dropFirst((tfield.text?.count)!))")
//        return true
//    }
    
}

