//
//  AVdinger.swift
//  DeepDish
//
//  Created by Eyimofe Oladipo on 2/22/22.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "BeAware_ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
