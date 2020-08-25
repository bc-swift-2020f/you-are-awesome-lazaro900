//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lazaro Alvelaez on 8/22/20.
//  Copyright © 2020 Lazaro Alvelaez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newnameLabel: UILabel!
    
    @IBOutlet weak var dummyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("App has launched")
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("You just pressed me")
        newnameLabel.textColor = dummyLabel.textColor
    }
    
}

