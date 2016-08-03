//
//  SecondViewController.swift
//  DelegationTest
//
//  Created by Bogdan Melnik on 7/5/16.
//  Copyright © 2016 Yohoho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var setButton: UIButton!
    
    var Delegate: TextReciveDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setButtonPressed(sender: AnyObject) {
        if let text = textField.text {
            if (!text.isEmpty) {
                Delegate?.didReciveText(text)
            }
            else {
                Delegate?.didReciveTextFailed()
            }
        } else {
            Delegate?.didReciveTextFailed()
        }
        self.navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
