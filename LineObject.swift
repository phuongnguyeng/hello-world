//
//  EnemyObject.swift
//  SPEEDBOAT
//
//  Created by Mr. Joker on 8/15/19.
//  Copyright © 2019 ORI GAME. All rights reserved.
//

import Foundation
import SpriteKit

class LineObject : Sprite {
    var enemy1 = EnemyObject()
    var enemy2 = EnemyObject()
    
    override init() {
        super.init()
    }
    
    var effectSpr = Sprite(imageNamed: "_bat_1_1.png", size: CGSize.withPercentScaled(roundByHeight: 15), position: CGPoint.zero, zPosition: 3)
    var animateFrames = [SKTexture()]
    
    override init(imageNamed: String, size: CGSize, position: CGPoint, zPosition: CGFloat) {
        super.init(imageNamed: imageNamed, size: size, position: position, zPosition: zPosition)
        
        effectSpr.size = size
        animateFrames.removeAll()
        let name:Int = Int.random(in: 1...2)
        
        for i in 1...10 {
            animateFrames.append(SKTexture(imageNamed: "Images/bolt_tesla_\(i).png"))
            if name == 2 {
                effectSpr.yScale = -1
            }
        }
        effectSpr.run(SKAction.repeatForever(SKAction.animate(with: animateFrames, timePerFrame: 0.1, resize: false, restore: false)))
        addChild(effectSpr)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
