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


class Knight: GKEntity {
    
    init(imageName: String) {
        super.init()
        let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
        addComponent(spriteComponent)
        let knightAnimation = KnightAnimation()
        addComponent(knightAnimation)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        if !(component(ofType: SpriteComponent.self)?.node.hasActions())! {
            component(ofType: KnightAnimation.self)?.idle()
        }
    }
    
}
