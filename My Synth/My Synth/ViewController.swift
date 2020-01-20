//
//  ViewController.swift
//  My Synth
//
//  Created by Ekjot Multani on 2020-01-18.
//  Copyright © 2020 Ekjot Multani. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {
    
    
    // initializing the mixer and the oscillators for the sounds
    var mixer = AKMixer()
    var oscillators = Array(repeating: AKOscillator(), count: 8)
    
    func noteStart(freq: Double){
        for osc in oscillators{
                   if(!osc.isPlaying){
                       osc.frequency = freq
                       osc.start()
                   }
                   break
               }
        
    }
    
    func noteStop(freq: Double){
        for osc in oscillators{
                   if(osc.frequency == freq){
                       osc.stop()
                   }
                   break
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setting up audiokit
        
        for i in oscillators{
            i.frequency = 0
        }
        
        mixer = AKMixer(oscillators[0], oscillators[1], oscillators[2], oscillators[3], oscillators[4], oscillators[5], oscillators[6], oscillators[7])
    
        mixer.volume = 0.5
        AudioKit.output = mixer
        try? AudioKit.start()
        
    }
    
    // from here on down, its all just playing the notes upon button touch down and stopping upon touch up
    
    @IBAction func C1Button(_ sender: UIButton) {
        print("C1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 261.1)
        
    }
    
    @IBAction func C1ButtonUp(_ sender: UIButton) {
        print("C1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha: 0)
        
        noteStop(freq: 261.1)
        
    }
    
    @IBAction func c1Button(_ sender: UIButton) {
        print("c#1")

        noteStart(freq: 277.18)
    }
    
    
    @IBAction func c1ButtonUp(_ sender: UIButton) {
        print("c#1 up")
        
        noteStop(freq: 277.18)
    }
    
    
    @IBAction func D1Button(_ sender: UIButton) {
        print("D1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 293.66)
    }
    
    @IBAction func D1ButtonUp(_ sender: UIButton) {
        print("D1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
        
        noteStop(freq: 293.66)
    }
    
    @IBAction func d1Button(_ sender: UIButton) {
        print("d#1")

        noteStart(freq: 311.13)
    }

    @IBAction func d1ButtonUp(_ sender: UIButton) {
        print("d#1 up")
        
        noteStop(freq: 311.13)
    }
    
    
    @IBAction func E1Button(_ sender: UIButton) {
        print("E1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 329.63)
    }
    
    @IBAction func E1ButtonUp(_ sender: UIButton) {
        print("E1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
        
        noteStop(freq: 329.63)
        
    }
    
    
    @IBAction func F1Button(_ sender: UIButton) {
        print("F1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 349.23)
    }
    
    @IBAction func F1ButtonUp(_ sender: UIButton) {
        print("F1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
        
        noteStop(freq: 349.23)
    }
    
    @IBAction func f1Button(_ sender: UIButton) {
        print("f#1")

        noteStart(freq: 369.99)
    }
    
    @IBAction func f1ButtonUp(_ sender: UIButton) {
        print("f#1")

        noteStop(freq: 369.99)
    }
    
    
    @IBAction func G1Button(_ sender: UIButton) {
        print("G1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 392.00)
         
    }
    
    @IBAction func G1ButtonUp(_ sender: UIButton) {
        print("G1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
        
        noteStop(freq: 392.00)

    }
    
    @IBAction func g1Button(_ sender: UIButton) {
        print("g#1")

        noteStart(freq: 415.30)
    }
    
    @IBAction func g1ButtonUp(_ sender: UIButton) {
        print("g#1")

        noteStop(freq: 415.30)
    }
    
    
    @IBAction func A1Button(_ sender: UIButton) {
        print("A1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
        
        noteStart(freq: 440.00)
    }
    
    @IBAction func A1ButtonUp(_ sender: UIButton) {
        print("A1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
        
        noteStop(freq: 440.00)
    }
    
    @IBAction func a1Button(_ sender: UIButton) {
        print("a#1")

        noteStart(freq: 466.16)
    }
    
    @IBAction func a1ButtonUp(_ sender: UIButton) {
        print("a#1")

        noteStop(freq: 466.16)
    }
    
    @IBAction func B1Button(_ sender: UIButton) {
        print("B1")
        sender.backgroundColor = UIColor.init(white: 0.1, alpha: 0.2)
              
        noteStart(freq: 493.88)
    }
    
    @IBAction func B1ButtonUp(_ sender: UIButton) {
        print("B1 up")
        sender.backgroundColor = UIColor.init(white: 0, alpha:0)
                 
        noteStop(freq: 493.88)
    }
    
}

