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
//    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    
    override func sceneDidLoad() {
        
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        self.lastUpdateTime = 0
        
        entityManager = EntityManager(scene: self)
        let knight = Knight(imageName: "KnightIdle1")
        entityManager.add(entity: knight)
        entityManager.knight = knight
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        entityManager.knight?.change(state: .attack)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        entityManager.knight?.change(state: .run)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
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







