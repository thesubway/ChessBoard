//
//  ViewController.swift
//  ChessBoard
//
//  Created by Dan Hoang on 9/2/14.
//  Copyright (c) 2014 Dan Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numRows = 8
    let numCols = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var greenView = UIView(frame: CGRectMake(50, 50, 200, 400))
        //        greenView.frame = CGRectMake(50, 50, 200, 400)
        greenView.backgroundColor = UIColor.greenColor()
        println(greenView.frame.width)
        println(greenView.frame.height)
        println(greenView.frame.origin.x)
        println(greenView.frame.origin.y)
        //        self.view.backgroundColor = UIColor.yellowColor() //.CGColor?
        self.view.backgroundColor = UIColor(red: 200, green: 0, blue: 0, alpha: 1.0)
        //        self.view.addSubview(colorView)
        self.view.addSubview(greenView)
        var chessBoard = UIView()
        chessBoard.frame = CGRectMake(0, 0, 128, 128)
        chessBoard.backgroundColor = UIColor.whiteColor()
        greenView.addSubview(chessBoard)
        
        println("This is it: Michael Jackson's Last Tour")
        
        var squareWidth = chessBoard.frame.width / CGFloat(self.numRows)
        var squareHeight = chessBoard.frame.height / CGFloat(self.numCols)
        for var i = CGFloat(0); i < CGFloat(self.numRows); i++ {
            for var j = CGFloat(0); j < CGFloat(self.numCols); j++ {
                //                let squareXCoord = CGFloat(i) * squareWidth
                //                let squareYCoord = CGFloat(j) * squareHeight
                var currentSquare = UIView()
                //UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                
                currentSquare.frame = CGRectMake(i * squareWidth, j * squareHeight, squareWidth, squareHeight)
                //now, to check if the square is black or white:
                if (Int(i) + Int(j)) % 2 == 0 {
                    currentSquare.backgroundColor = UIColor.whiteColor()
                }
                else {
                    currentSquare.backgroundColor = UIColor.blackColor()
                }
                chessBoard.addSubview(currentSquare)
            }
        }
    }
    
    override func touchesEnded(touches: NSSet!, withEvent event: UIEvent!) {
        let hexaValue = 16 as Double
        var divNumber = pow(hexaValue, 8) //this is 16^8
        self.view.alpha = (CGFloat(arc4random()) / CGFloat(divNumber))
        println(self.view.alpha)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

