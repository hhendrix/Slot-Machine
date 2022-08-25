//
//  PlaySound.swift
//  Slot Machine
//
//  Created by Harry Lopez on 17/05/22.
//

import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound:String, type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("Error: Could not find and play the sound file!")
        }
    }
}
