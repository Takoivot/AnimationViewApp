//
//  Model.swift
//  AnimationViewApp
//
//  Created by Артур Сахбиев on 20.05.2022.
//

import Foundation
import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
           """
           preset: \(preset)
           curve: \(curve)
           """
        
    }
    
    static func getRandomAnimation() -> Animation{
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "shake",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.1...0.8)
        )
        
        
    }
}
