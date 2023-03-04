//  PlayerLandscape.swift
//  MAPD724-W2023-MidTerm-301286671
//  Created by Samir Patel on 2023-03-02.

import GameplayKit
import SpriteKit

class PlayerLandscape : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "planeRight", initialScale: 1.5)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the bottom boundary
        if(position.y <= -270)
        {
            position.y = -270
        }
        
        // constrain the player on the top boundary
        if(position.y >= 270)
        {
            position.y = 270
        }
    }
    
    override func Reset()
    {
        position.x = -400
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
