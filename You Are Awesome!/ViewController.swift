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
    @IBOutlet weak var feelingImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newnameLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("You just pressed a button")
        newnameLabel.text = "Good Job!"
        feelingImage.image = UIImage(named: "image\(arc4random_uniform(9)).png")

        
    }
    
}

