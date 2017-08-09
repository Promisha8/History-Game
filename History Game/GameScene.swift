//
//  GameScene.swift
//  History Game
//
//  Created by iD Student on 8/9/17.
//  Copyright © 2017 com.iDtech. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var cardWidth : CGFloat?
    var cardHeight : CGFloat?
    
    var vc : GameViewController!
    weak var scrollView: SwiftySKScrollView?
    let moveableNode = SKNode()
    
    override func didMove(to view: SKView) {
        
        cardWidth = (size.width) / 5
        cardHeight = (size.height) / 3
        
        addChild(moveableNode)
        
        scrollView = SwiftySKScrollView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), moveableNode: moveableNode, direction: .vertical)
        scrollView?.contentSize = CGSize(width: scrollView!.frame.width, height: CGFloat(cards[0].count) * cardHeight!)
        
        view.addSubview(scrollView!)
        
        var topSpace = NSLayoutConstraint(item: scrollView!, attribute: .top, relatedBy: .equal, toItem: vc.topLayoutGuide, attribute: .top, multiplier: 1.0, constant: 100.0).isActive = true
        //view.addConstraint(topSpace)
        
        
        for row in 0 ..< cards.count{
            for col in 0 ..< cards[0].count{
                cards[row][col].size = CGSize(width: cardWidth!, height: cardHeight!)
                cards[row][col].position = CGPoint(x: CGFloat(col) * cardWidth! + cardWidth!/2, y: -CGFloat(row) * cardHeight! - cardHeight!/2)
                moveableNode.addChild(cards[row][col])
            }
        }
        
        // Scroll View Stuff
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
