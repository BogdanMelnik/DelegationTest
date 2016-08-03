//
//  FirstViewController.swift
//  DelegationTest
//
//  Created by Bogdan Melnik on 7/5/16.
//  Copyright © 2016 Yohoho. All rights reserved.
//

import UIKit

protocol TextReciveDelegate {
    func didReciveText(s: String)
    func didReciveTextFailed()
}

class FirstViewController: UIViewController, TextReciveDelegate{

    @IBOutlet weak var textLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToSecondViewController" {
            let secondVC = segue.destinationViewController as?SecondViewController
            secondVC?.Delegate = self
        }
    }
    
    func didReciveText(s: String) {
        self.textLable.text = s
    }
    
    func didReciveTextFailed() {
        let message = "Text reciving failed! =("
        self.textLable.text = message
        print(message)
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
