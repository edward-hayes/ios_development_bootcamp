//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
       // print(sender.currentTitle)
        playSound(label: sender.currentTitle ?? "C")
        dimButton(button: sender)
        
    }
    
    func playSound(label: String) {
        guard let url = Bundle.main.url(forResource: label, withExtension: "wav") else { return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("didn't work", error.localizedDescription)
        }
    }
    
    func dimButton(button: UIButton) {
        button.alpha = 0.5
        
        // rest for .2 sec
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1
        }
    }
    
    

}

