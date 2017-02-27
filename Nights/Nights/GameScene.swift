//
//  GameScene.swift
//  Nights
//
//  Created by Benjamin Su on 2/25/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entityManager: EntityManager!
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    
    override func sceneDidLoad() {

        self.lastUpdateTime = 0
        entityManager = EntityManager(scene: self)
       
        entityManager.add(entity: Knight(imageName: "KnightIdle1"))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(entityManager.entities.count)
        print(self.children.count)
        for entity in entityManager.entities {
            entity.component(ofType: SpriteComponent.self)?.animate(textures: SpriteConstants.player.attack, frameTime: 0.15, withKey: "Attack")
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for entity in entityManager.entities {
            if !(entity.component(ofType: SpriteComponent.self)?.node.hasActions())! {
                entity.component(ofType: SpriteComponent.self)?.animate(textures: SpriteConstants.player.run, frameTime: 0.15, withKey: "Run")
            }
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for entity in entityManager.entities {
            entity.component(ofType: SpriteComponent.self)?.animate(textures: SpriteConstants.player.dead, frameTime: 0.15, withKey: "Dead")
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in entityManager.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
    }
}







