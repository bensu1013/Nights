//
//  MovementComponent.swift
//  Nights
//
//  Created by Benjamin Su on 2/28/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import Foundation
import GameplayKit

class MovementComponent: GKComponent {
    
    var walkSpeed: CGFloat
    var runSpeed: CGFloat
    
    init(walk: CGFloat, run: CGFloat) {
        self.walkSpeed = walk
        self.runSpeed = run
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveX(offset: CGFloat, for sprite: SKSpriteNode) {
        let duration = Double(offset/walkSpeed)
        let move = SKAction.moveTo(x: offset, duration: duration)
        sprite.run(move)
    }
    
}
