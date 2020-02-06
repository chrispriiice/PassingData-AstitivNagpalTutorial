//
//  ViewController.swift
//  PassingData-AstitvNagpalTutorial
//
//  Created by Chris Price on 2/5/20.
//  Copyright © 2020 Chris Price. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegateProtocol {

    @IBOutlet weak var receivedDataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func sendDataToFirstViewController(myData: String) {
        self.receivedDataLabel.text = myData
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
}

