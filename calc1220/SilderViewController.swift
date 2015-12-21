//
//  SilderViewController.swift
//  calc1220
//
//  Created by wusuchen on 2015/12/21.
//  Copyright © 2015年 wusu chiang. All rights reserved.
//

import UIKit

class SilderViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var perPsersonTotal: UILabel!
    @IBOutlet weak var personNum: UITextField!
    @IBOutlet weak var tipSilder: UISlider!
    @IBOutlet weak var tipRange: UILabel!
    
    @IBAction func tipValueBar(sender: AnyObject) {
        if self.amount.text?.characters.count > 0 {
        let correctValue = Int(self.tipSilder.value)
        self.tipRange.text = "\(correctValue)%"
        let myAmount = Int(self.amount.text!)!
        let myTotal = (myAmount * correctValue / 100) + myAmount
        self.total.text = "\(myTotal)"
        print("\(myTotal)")
        let personNumber = Int(self.personNum.text!)
        let perPersonTotalOut = myTotal / personNumber!
        self.perPsersonTotal.text = "\(perPersonTotalOut)"
        }
     else {
    self.total.text = "Amount can't nil"
    }
    
    }

    @IBAction func amountEditing(sender: AnyObject) {
     
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
