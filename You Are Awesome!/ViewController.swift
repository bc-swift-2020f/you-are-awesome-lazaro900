//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lazaro Alvelaez on 8/22/20.
//  Copyright © 2020 Lazaro Alvelaez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var newnameLabel: UILabel!
    @IBOutlet weak var feelingImage: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var audioPlayer : AVAudioPlayer!
    
    
    // variables to control what message and image is shown
    var imageNumber = 100000
    var totalNumberOfImages = 9
    var messageNumber = -1
    let totalNumberOfSounds = 3
    var soundNumber = -1
    var play = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newnameLabel.text = "Welcome!"
        // Do any additional setup after loading the view.
    }
    
    //this function will be used to play a sound
    func playSound(new : String) {
        if let sound = NSDataAsset(name: new) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not read data file sound0")
            }
            
        } else {
            print("Could not read data file sound0")
        }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn {
            play = false
        } else {
            play = true
        }
    }
    
    //this function will be used to pick a non-repeating image, message, and sound
    func nonRepeatingRandom(originalNumber : Int, upperBounds : Int) -> Int {
      var newNumber : Int
      
      repeat {
        newNumber = Int.random(in: 0...upperBounds)


      } while newNumber == originalNumber
        
        return newNumber
    }
    
    

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        //pick a random image and check that it is not a repeat
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
        feelingImage.image = UIImage (named: "image\(imageNumber).png")

        
        //these are the messages that will be displayed
        let messages = ["You are Awesome!",
                        "Good Job!",
                        "Amazing",
                        "You are so talented",
                        "I wish that I was you",
                        "You have mad skillzzzzzz",
                        "I wanted to let you know how amazing you are"]
        
        //pick a random message and check that it is not a repeat
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count - 1)
        newnameLabel.text = messages[messageNumber]
        
        //pick a random sound and check that it is not a repeat
        if play {
            soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
            playSound(new: "sound\(soundNumber)")
        }
    }
    
}

