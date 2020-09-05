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
        
        //this will control the image number and reset it when it reaches 10
        print(imageNumber)
        imageNumber = imageNumber + 1
        if imageNumber == 10 {
            imageNumber = 0
        }
        let imageName = "image\(imageNumber).png"
        feelingImage.image = UIImage (named: imageName)
        
        
        //these are the messages that will be displayed
        let messages = ["You are Awesome!",
                        "Good Job!",
                        "Amazing",
                        "You are Talented"]
        
        
        //path for what message to display
        if newnameLabel.text == messages[messagenum] {
            newnameLabel.text = messages[messagenum]
        } else if newnameLabel.text == messages[messagenum] {
            newnameLabel.text = messages[messagenum]
        }
        else {
            newnameLabel.text = messages[messagenum]
        }
        
        //used to control what message is shown
        messagenum += 1
        if messagenum == 4{
            messagenum = 0
        }

        
    }
    
}

