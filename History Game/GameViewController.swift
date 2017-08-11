//
//  GameViewController.swift
//  History Game
//
//  Created by iD Student on 8/9/17.
//  Copyright © 2017 com.iDtech. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var timer = Timer()
    var scene = GameScene()
    
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scheduledTimerWithTimeInterval()
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
                scene = GameScene(fileNamed: "GameScene")!
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                scene.vc = self
                // Present the scene
                view.presentScene(scene)
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function "updateCounting" with the interval of 1 seconds
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GameViewController.updateCounting), userInfo: nil, repeats: true)
    }
    
    
    func updateCounting(){
        var score = scene.getScore()
        
        currentScoreLabel.text = "Correct: \(score)/160"
    }
}
