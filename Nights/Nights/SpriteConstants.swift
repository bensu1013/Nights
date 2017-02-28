//
//  SpriteConstants.swift
//  Nights
//
//  Created by Benjamin Su on 2/26/17.
//  Copyright © 2017 Benjamin Su. All rights reserved.
//

import Foundation
import SpriteKit

struct SpriteConstants {
    
    struct player {
        static var idle: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightIdle1"),SKTexture(imageNamed: "KnightIdle2"),
                SKTexture(imageNamed: "KnightIdle3"),SKTexture(imageNamed: "KnightIdle4"),
                SKTexture(imageNamed: "KnightIdle5"),SKTexture(imageNamed: "KnightIdle6"),
                SKTexture(imageNamed: "KnightIdle7"),SKTexture(imageNamed: "KnightIdle8"),
                SKTexture(imageNamed: "KnightIdle9"),SKTexture(imageNamed: "KnightIdle10")]
        }
        static var walk: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightWalk1"),SKTexture(imageNamed: "KnightWalk2"),
                SKTexture(imageNamed: "KnightWalk3"),SKTexture(imageNamed: "KnightWalk4"),
                SKTexture(imageNamed: "KnightWalk5"),SKTexture(imageNamed: "KnightWalk6"),
                SKTexture(imageNamed: "KnightWalk7"),SKTexture(imageNamed: "KnightWalk8"),
                SKTexture(imageNamed: "KnightWalk9"),SKTexture(imageNamed: "KnightWalk10")]
        }
        static var run: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightRun1"),SKTexture(imageNamed: "KnightRun2"),
                SKTexture(imageNamed: "KnightRun3"),SKTexture(imageNamed: "KnightRun4"),
                SKTexture(imageNamed: "KnightRun5"),SKTexture(imageNamed: "KnightRun6"),
                SKTexture(imageNamed: "KnightRun7"),SKTexture(imageNamed: "KnightRun8"),
                SKTexture(imageNamed: "KnightRun9"),SKTexture(imageNamed: "KnightRun10")]
        }
        static var jump: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightJump1"),SKTexture(imageNamed: "KnightJump2"),
                SKTexture(imageNamed: "KnightJump3"),SKTexture(imageNamed: "KnightJump4"),
                SKTexture(imageNamed: "KnightJump5"),SKTexture(imageNamed: "KnightJump6"),
                SKTexture(imageNamed: "KnightJump7"),SKTexture(imageNamed: "KnightJump8"),
                SKTexture(imageNamed: "KnightJump9"),SKTexture(imageNamed: "KnightJump10")]
        }
        static var jumpattack: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightJumpAttack1"),SKTexture(imageNamed: "KnightJumpAttack2"),
                SKTexture(imageNamed: "KnightJumpAttack3"),SKTexture(imageNamed: "KnightJumpAttack4"),
                SKTexture(imageNamed: "KnightJumpAttack5"),SKTexture(imageNamed: "KnightJumpAttack6"),
                SKTexture(imageNamed: "KnightJumpAttack7"),SKTexture(imageNamed: "KnightJumpAttack8"),
                SKTexture(imageNamed: "KnightJumpAttack9"),SKTexture(imageNamed: "KnightJumpAttack10")]
        }
        static var attack: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightAttack1"),SKTexture(imageNamed: "KnightAttack2"),
                SKTexture(imageNamed: "KnightAttack3"),SKTexture(imageNamed: "KnightAttack4"),
                SKTexture(imageNamed: "KnightAttack5"),SKTexture(imageNamed: "KnightAttack6"),
                SKTexture(imageNamed: "KnightAttack7"),SKTexture(imageNamed: "KnightAttack8"),
                SKTexture(imageNamed: "KnightAttack9"),SKTexture(imageNamed: "KnightAttack10")]
        }
        static var dead: [SKTexture] {
            return [
                SKTexture(imageNamed: "KnightDead1"),SKTexture(imageNamed: "KnightDead2"),
                SKTexture(imageNamed: "KnightDead3"),SKTexture(imageNamed: "KnightDead4"),
                SKTexture(imageNamed: "KnightDead5"),SKTexture(imageNamed: "KnightDead6"),
                SKTexture(imageNamed: "KnightDead7"),SKTexture(imageNamed: "KnightDead8"),
                SKTexture(imageNamed: "KnightDead9"),SKTexture(imageNamed: "KnightDead10")]
        }
    }
}
