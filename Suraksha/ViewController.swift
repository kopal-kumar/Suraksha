//
//  ViewController.swift
//  Suraksha
//
//  Created by Kopal Kumar on 7/14/20.
//  Copyright © 2020 Kopal Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func call911(_ sender: Any) {
        if let url = URL(string: "tel://6366279634"),
        UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)}
    
    }
    
    
    
    
}

