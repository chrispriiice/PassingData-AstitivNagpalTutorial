//
//  SecondViewController.swift
//  PassingData-AstitvNagpalTutorial
//
//  Created by Chris Price on 2/5/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//

import UIKit

protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataToSendTextField: UITextField!
    
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataButtonClicked(_ sender: Any) {
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            let dataToBeSent = self.dataToSendTextField.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
}
