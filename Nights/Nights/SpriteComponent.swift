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
        node = SKSpriteNode(texture: texture, color: UIColor.white, size: texture.size())
        super.init()
        
        
        let idle = SpriteConstants.player.idle
        let animate = SKAction.repeatForever(SKAction.animate(with: idle, timePerFrame: 0.15))
        node.run(animate)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
}
