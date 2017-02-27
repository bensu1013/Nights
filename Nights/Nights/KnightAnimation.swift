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
    
    weak var node: SKSpriteNode?
    
    override init() {
        super.init()
        node = self.entity?.component(ofType: SpriteComponent.self)?.node
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func walk() {
        
    }
    
}
