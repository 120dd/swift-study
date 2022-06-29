//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer?

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes:[String:Int] = ["Soft":300, "Medium":420, "Hard":720]
    var timer = Timer()
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        var result = eggTimes[hardness]!
        let totalProgress = eggTimes[hardness]!
        timer.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            if result > 0 {
//                print ("\(result) seconds")
                self.mainLable.text = "\(result) seconds left..."
                result -= 1
                self.progressBar.progress = (Float((totalProgress-result))/Float(totalProgress))
            } else {
                Timer.invalidate()
                self.mainLable.text = "Done!"
                playSound()
            }
        }
    }
    
}

func playSound() {
    guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }

        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
}

