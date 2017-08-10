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
    var gameTitle = SKLabelNode(fontNamed: "Arial")
    var creatorTitle = SKLabelNode(fontNamed: "Arial")
    var inventionTitle = SKLabelNode(fontNamed: "Arial")
    var countryTitle = SKLabelNode(fontNamed: "Arial")
    var rulerTitle = SKLabelNode(fontNamed: "Arial")
    var yearTitle = SKLabelNode(fontNamed: "Arial")
    
    var vc : GameViewController!
    weak var scrollView: SwiftySKScrollView?
    let moveableNode = SKNode()
    
    override func didMove(to view: SKView) {
        
        backgroundColor = UIColor.white
        cardWidth = (size.width) / 5
        cardHeight = (size.height) / 3
        
        addChild(moveableNode)
        
        //Title of the game
        gameTitle.fontColor = UIColor.red
        
        gameTitle.fontSize = 30
        
        gameTitle.position = CGPoint(x: self.size.width * 0.1, y: self.size.height * 0.9)
        
        addChild(gameTitle)
        
        gameTitle.text = "World's greatest inventions in 17th-20th centuries"
        
        //Creator
        creatorTitle.fontColor = UIColor.black
        
        creatorTitle.fontSize = 20
        
        creatorTitle.position = CGPoint(x: self.size.width * 0.1, y: self.size.height * 0.7)
        
        addChild(creatorTitle)
        
        creatorTitle.text = "Creator"
        
        //Invention
        creatorTitle.fontColor = UIColor.black
        
        inventionTitle.fontSize = 20
        
        inventionTitle.position = CGPoint(x: self.size.width * 0.3, y: self.size.height * 0.7)
        
        addChild(inventionTitle)
        
        inventionTitle.text = "Invention"
        
        //Country
        countryTitle.fontColor = UIColor.black
        
        countryTitle.fontSize = 20
        
        countryTitle.position = CGPoint(x: self.size.width * 0.5, y: self.size.height * 0.7)
        
        addChild(countryTitle)
        
        countryTitle.text = "Country"
        
        
        //Ruler
        rulerTitle.fontColor = UIColor.black
        
        rulerTitle.fontSize = 20
        
        rulerTitle.position = CGPoint(x: self.size.width * 0.7, y: self.size.height * 0.7)
        
        addChild(rulerTitle)
        
        rulerTitle.text = "Ruler"
        
        //Year
        yearTitle.fontColor = UIColor.black
        
        yearTitle.fontSize = 20
        
        yearTitle.position = CGPoint(x: self.size.width * 0.9, y: self.size.height * 0.7)
        
        addChild(yearTitle)
        
        yearTitle.text = "Year"
        
        
        
        
        scrollView = SwiftySKScrollView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), moveableNode: moveableNode, direction: .vertical)
        scrollView?.contentSize = CGSize(width: scrollView!.frame.width, height: CGFloat(cards[0].count) * cardHeight!)
        
        view.addSubview(scrollView!)
        
        var topSpace = NSLayoutConstraint(item: scrollView!, attribute: .top, relatedBy: .equal, toItem: vc.topLayoutGuide, attribute: .top, multiplier: 1.0, constant: 100.0).isActive = true
        //view.addConstraint(topSpace)
        
        
        for row in 0 ..< cards.count{
            for col in 0 ..< cards[row].count{
                cards[row][col].size = CGSize(width: cardWidth!, height: cardHeight!)
                cards[row][col].position = CGPoint(x: CGFloat(row) * cardWidth! + cardWidth!/2, y: -CGFloat(col) * cardHeight! - cardHeight!/2 - 125)
                moveableNode.addChild(cards[row][col])
                var rectangle : CGRect = CGRect(x: CGFloat(row) * cardWidth! / 2, y: CGFloat(col) * cardHeight! / 2, width: 20, height: 20)
                cards[row][col].field.frame = rectangle
                cards[row][col].field.borderStyle = UITextBorderStyle.roundedRect
                cards[row][col].field.textColor = UIColor.black
                cards[row][col].field.font = UIFont(name: "helvetica", size: 8)
                cards[row][col].color = UIColor.black
                self.view?.addSubview(cards[row][col].field)
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
        for row in 0 ..< cards.count{
            for col in 0 ..< cards[row].count{
                var rectangle : CGRect = CGRect(x: CGFloat(row) * cardWidth! / 2 + cardWidth!, y: (CGFloat(col) * cardHeight!) / 2 - ((scrollView?.contentOffset.y)! / 2), width: 20, height: 20)
                cards[row][col].field.frame = rectangle
            }
        }
    }
}
