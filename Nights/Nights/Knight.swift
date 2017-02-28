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
    
    fileprivate var stateLocked = false
    fileprivate var state: KnightState = .idle
    
    init(imageName: String) {
        super.init()
        let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
        addComponent(spriteComponent)
        
        let moveComponent = MovementComponent(walk: 100.0, run: 150.0)
        addComponent(moveComponent)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        stateLogic()
        print(component(ofType: SpriteComponent.self)?.node.position)
    }
    
    func change(state: KnightState) {
        self.state = state
    }
    
    func stateLogic() {
        
        if !stateLocked {
            switch state {
            case .idle:
                idleState()
            case .walk:
                walkState()
            case .run:
                runState()
            case .jump:
                jumpState()
            case .dead:
                deadState()
            case .attack:
                attackState()
            case .jumpattack:
                jumpAttackState()
            }
        }
        
    }
    
}

//MARK: - state methods for how the knight acts and its subsequent animations
extension Knight {
    func idleState() {
        //health regen? or energy regen?
        
        //movements?
        
        
        //spriteAnimation
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "idle") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.idle, frameTime: 0.1, withKey: "idle")
        }
    }
    
    func walkState() {
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        guard let moveComponent = component(ofType: MovementComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "walk") {
            
        } else {
            moveComponent.moveX(offset: 1000, for: spriteComponent.node)
            spriteComponent.animate(textures: SpriteConstants.player.walk, frameTime: 0.1, withKey: "walk")
            
        }
    }
    
    func runState() {
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "run") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.run, frameTime: 0.1, withKey: "run")
        }
    }
    
    func jumpState() {
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "jump") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.jump, frameTime: 0.1, withKey: "jump")
        }
    }
    
    func deadState() {
        stateLocked = true
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "dead") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.dead, frameTime: 0.1, withKey: "dead") {
                
            }
        }
    }
    
    //Attack states will stateLock to prevent animation breaking
    func attackState() {
        stateLocked = true
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "attack") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.attack, frameTime: 0.1, withKey: "attack") {
                self.stateLocked = false
                self.state = .idle
            }
        }
    }
    
    func jumpAttackState() {
        stateLocked = true
        guard let spriteComponent = component(ofType: SpriteComponent.self) else { return }
        if let _ = spriteComponent.node.action(forKey: "jumpAttack") {
            
        } else {
            spriteComponent.animate(textures: SpriteConstants.player.jumpattack, frameTime: 0.1, withKey: "jumpAttack") {
                self.stateLocked = false
                self.state = .idle
            }
        }
    }
}




