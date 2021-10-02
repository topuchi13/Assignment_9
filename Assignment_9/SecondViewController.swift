//
//  SecondViewController.swift
//  SecondViewController
//
//  Created by Nika Topuria on 02.10.21.
//

import UIKit

class SecondViewController: UIViewController {

    var delegate: displayText?
    
    @IBOutlet var textField: UITextField!
    @IBAction func setTextButton(_ sender: UIButton) {
        delegate?.showThis(new: textField.text!)        // trigger "showThis" function in delegate class.
        dismiss(animated: true)
    }
    
}

// Define "displayText" protocol
protocol displayText {
    func showThis (new text: String)
}
