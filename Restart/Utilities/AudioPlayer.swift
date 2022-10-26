//
//  AudioPlayer.swift
//  Restart
//
//  Created by José Alves da Cunha on 26/10/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: path))
            audioPlayer?.play()
        }catch {
            print("could not play the sound file.")
        }
    }
}
