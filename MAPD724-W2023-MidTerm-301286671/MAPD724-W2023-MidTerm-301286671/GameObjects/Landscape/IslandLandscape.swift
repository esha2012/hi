//  IslandLandscape.swift
//  MAPD724-W2023-MidTerm-301286671
//  Created by Samir Patel on 2023-03-02.

import GameplayKit
import SpriteKit

class IslandLandscape : GameObject
{
    // initializer / constructor
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -876) //chanes in x and y position
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 876 //chanes in x and y position
        // get a pseudo random number
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomX)
        isColliding = false
    }
    
    // public method
    func Move()
    {
        position.x -= verticalSpeed! //chanes in x and y position
    }
}
