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
    
    // variables to control what message and image is shown
    var imageNumber = 0
    var messagenum = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newnameLabel.text = "Welcome!"
        // Do any additional setup after loading the view.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //pick a random image
        let imageName = "image\(Int.random(in: 0...9)).png"
        feelingImage.image = UIImage (named: imageName)

        
        //these are the messages that will be displayed
        let messages = ["You are Awesome!",
                        "Good Job!",
                        "Amazing",
                        "You are So Talented",
                        "I Wish That I Was You",
                        "You Have Mad Skillzzzzzz",
                        "I Wanted To Let You Know How Amazing You Are"]
        
        //pick a random message
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        
        while newMessage == newnameLabel.text {
            print("A message repeated but I took care of it :)")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        
        newnameLabel.text = newMessage
        

        
    }
    
}

