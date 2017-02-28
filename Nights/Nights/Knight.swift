//
//  Player.swift
//  Nights
//
//  Created by Benjamin Su on 2/25/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

enum KnightState {
    case idle, walk, run, attack, jumpattack, jump, dead
}

class Knight: GKEntity {
    
    private var animationLocked = false
    private var state: KnightState = .idle
    
    init(imageName: String) {
        super.init()
        let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
        addComponent(spriteComponent)
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        animationLogic()
    }
 
    func change(state: KnightState) {
        self.state = state
    }
    
    func animationLogic() {
        
        if let spriteComponent = component(ofType: SpriteComponent.self) {
            if !animationLocked {
                switch state {
                case .idle:
                    if !spriteComponent.node.hasActions() {
                        spriteComponent.animate(textures: SpriteConstants.player.idle, frameTime: 0.1, withKey: "idle")
                    }
                case .walk:
                    
                    if !spriteComponent.isAnimating(withKey: "walk") {
                        spriteComponent.animate(textures: SpriteConstants.player.walk, frameTime: 0.1, withKey: "walk") {
                            self.state = .idle
                        }
                    }
                case .run:
                    if !spriteComponent.isAnimating(withKey: "run") {
                        spriteComponent.animate(textures: SpriteConstants.player.run, frameTime: 0.1, withKey: "run") {
                            self.state = .idle
                        }
                    }
                case .attack:
                    animationLocked = true
                    if !spriteComponent.isAnimating(withKey: "attack") {
                        spriteComponent.animate(textures: SpriteConstants.player.attack, frameTime: 0.1, withKey: "attack") {
                            self.animationLocked = false
                            self.state = .idle
                        }
                    }
                default:
                    if !spriteComponent.node.hasActions() {
                        spriteComponent.animate(textures: SpriteConstants.player.idle, frameTime: 0.1, withKey: "idle")
                    }
                }
            }
        }
    }
    
    func idleState() {
        //health regen? or energy regen?
        
        
        
    }
    
}






