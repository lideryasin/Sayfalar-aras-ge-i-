//
//  SecondViewController.swift
//  Segues sayfalar arası
//
//  Created by Yasin Lider on 3.02.2018.
//  Copyright © 2018 Yasin Lider. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name is : \(name)"
        
    }

    @IBAction func backClicked(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
