//
//  ViewController.swift
//  Segues sayfalar arası
//
//  Created by Yasin Lider on 3.02.2018.
//  Copyright © 2018 Yasin Lider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameText: UITextField!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFirsttoSecond"{
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = username
            
        }
    }
    

    @IBAction func saveClicked(_ sender: Any) {
        username = nameText.text!
        performSegue(withIdentifier: "fromFirsttoSecond", sender: nil)
    }
    
}

