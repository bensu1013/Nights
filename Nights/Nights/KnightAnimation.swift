//
//  KnightAnimation.swift
//  Nights
//
//  Created by Benjamin Su on 2/27/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class KnightAnimation: GKComponent {
    
    override init() {
        super.init()
        print("animation init")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func idle() {
        if let spriteComponent = self.entity?.component(ofType: SpriteComponent.self) {
            spriteComponent.animate(textures: SpriteConstants.player.idle, frameTime: 0.1, withKey: "idle")
        }
    }
    
    func walk() {
        if let spriteComponent = self.entity?.component(ofType: SpriteComponent.self) {
            spriteComponent.animate(textures: SpriteConstants.player.walk, frameTime: 0.1, withKey: "walk")
        }
    }
    
}
