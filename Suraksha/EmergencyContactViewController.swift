//
//  EmergencyContactViewController.swift
//  Suraksha
//
//  Created by Kopal Kumar on 7/16/20.
//  Copyright © 2020 Kopal Kumar. All rights reserved.
//

import UIKit

class EmergencyContactViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var textOne: UITextField!
    @IBOutlet var textTwo: UITextField!
    @IBOutlet var textThree: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var callOutletOne: UIButton!
    
    @IBOutlet var callOutletThree: UIButton!
    
    @IBOutlet var callOutletTwo: UIButton!
    @IBAction func saveButton(_ sender: Any) {
        if textOne.text?.count == 10 && textTwo.text?.count == 10 && textThree.text?.count == 10 {
            titleLabel.text = "Call Emergency Contacts"
            callOutletOne.setTitleColor(.black, for: .normal)
            callOutletTwo.setTitleColor(.black, for: .normal)
            callOutletThree.setTitleColor(.black, for: .normal)
            
        } else if textOne.text?.count == 0 && textTwo.text?.count == 0 && textThree.text?.count == 0 {titleLabel.text = "Please Setup Emergency Contacts"
            
        } else {titleLabel.text = "ERROR!"
            }
        
    }
    
    
    
     @IBAction func callOne(_ sender: Any) {
        if let url = URL(string: "tel://\(textOne.text!)"),
         UIApplication.shared.canOpenURL(url) {
         UIApplication.shared.open(url, options: [:], completionHandler: nil)
     }
    }
    
        
    @IBAction func callTwo(_ sender: Any) {
        if let url = URL(string: "tel://\(textTwo.text!)"),
                UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
    }
    
    
    @IBAction func callThree(_ sender: Any) {
        if let url = URL(string: "tel://\(textThree.text!)"),
                UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
    }
    
    @IBAction func resetButtom(_ sender: UIButton) {
        textOne.clearButtonMode = .always
        textTwo.clearButtonMode = .always
        textThree.clearButtonMode = .always
    }
    //*/
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    //}
   // */

}



