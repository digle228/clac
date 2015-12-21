//
//  ViewController.swift
//  calc1220
//
//  Created by wusu chiang on 2015/12/20.
//  Copyright © 2015年 wusu chiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    @IBOutlet weak var Amount: UITextField!

    @IBOutlet weak var presenTage: UITextField!
    
    @IBOutlet weak var personResultLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var personTotal: UILabel!
    @IBOutlet weak var person: UITextField!


    
    @IBAction func countCalc(sender: AnyObject) {
        let nilValue = 0.0
        let myAmount = Double(self.Amount.text!)! ?? nilValue
        let myPresentage = Double(self.presenTage.text!)! ?? nilValue

        
        func count() {
            
            let result = myAmount * myPresentage + myAmount
            self.resultLabel.text = "\(result)"
            let personCount = Double (self.person.text!) ?? 1
            let personResult = result / personCount
            self.personResultLabel.text = "\(personResult)"
                    }
            if self.Amount.text?.characters.count > 0 {
                count ()
            }else {
                self.resultLabel.text = "Key in Amount"
                
            }
        
         if myPresentage >= 0.15 && myPresentage <= 0.25  {
            count ()
         } else {
            self.resultLabel.text = "Tip is 15%...25%"
         }




        


        

        
        print("aaa \(self.Amount.text ) \(Double(self.Amount.text!))")
        
        
        if self.Amount.text == nil || self.presenTage.text == nil {
            self.Amount.text = "0"
            self.presenTage.text = "0"
        }else{
            self.resultLabel.text = "Key in Amount"

 
        
        }
    }

}

    
  