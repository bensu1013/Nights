//
//  SpriteComponent.swift
//  Nights
//
//  Created by Benjamin Su on 2/25/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit

class SpriteComponent: GKComponent {
    
    let node: SKSpriteNode
    
    
    
    init(texture: SKTexture) {
        node = SKSpriteNode(texture: texture, color: UIColor.clear, size: texture.size())
        super.init()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animate(textures: [SKTexture], frameTime: Double, withKey: String, handler: (()->())? = nil) {
        let animateAction = SKAction.animate(with: textures, timePerFrame: frameTime)
        let handlerAction = SKAction.run {
            if let handle = handler {
                handle()
            }
        }
        
        let sequence = SKAction.sequence([animateAction, handlerAction])
        node.run(sequence, withKey: withKey)
    }
    
    func isAnimating(withKey: String) -> Bool {
        if let _ = node.action(forKey: withKey) {
            return true
        } else {
            return false
        }
    }

    
}
