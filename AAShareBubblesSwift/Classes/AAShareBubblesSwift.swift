//
//  AAShareBubblesSwift.swift
//  AAShareBubblesSwift
//
//  Created by junpei ono on 2017/06/23.
//

import UIKit

public class AAShareBubblesSwift: NSObject {
    
    let baseView:ShareBubbleButton = ShareBubbleButton()
    var buttons:[ShareBubbleButton] = Array()
    public let testBun:UIButton = UIButton()
    
    
    public var bubbleRadius:Float = 40
    
    
    override public init() {
        super.init()
    }
    
    public func show(){
        
        print("helloTestFunc")
        
        
        var sinus = sin(90.0000 )
        
        print(M_PI)
        print(sinus)

        
        let rv = UIApplication.shared.keyWindow! as UIWindow
        baseView.frame = rv.frame
        baseView.addTargetClosure{_ in
            self.hideView()
        }
        rv.addSubview(baseView)
        
        let contentView:UIView = UIView()
        contentView.frame = baseView.frame
        contentView.backgroundColor = UIColor.gray
        contentView.alpha = 0.2
        contentView.isUserInteractionEnabled = false
        
        baseView.addSubview(contentView)
        
        
        let myBoundSize: CGSize = UIScreen.main.bounds.size
        
        for i in 0..<buttons.count {
            

            buttons[i].frame.size = CGSize(width: 10, height: 10)
            buttons[i].center.x = rv.center.x
            buttons[i].center.y = rv.center.y
            
            //buttons[i].frame = CGRect(x: myBoundSize.width/2-CGFloat(bubbleRadius/4), y: myBoundSize.height/2-CGFloat(bubbleRadius/4), width: CGFloat(bubbleRadius/2), height: CGFloat(bubbleRadius/2))
            buttons[i].layer.cornerRadius =  CGFloat(10/2)
            buttons[i].layer.masksToBounds = true
            buttons[i].addTargetClosure{_ in
                
                print("clicked")
                self.hideView()
            }
            baseView.addSubview(buttons[i])
            
            
            
            
            UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveLinear, animations: {
             
             
                
                let kodo:Double = 360.0/Double(self.buttons.count)
                
                //self.buttons[i].frame.size = CGSize(width: CGFloat(self.bubbleRadius), height: CGFloat(self.bubbleRadius))
                self.buttons[i].center.x = rv.center.x+CGFloat(100*sin((Double(kodo)*Double(i)+Double(kodo/2))*M_PI/180 ))
                self.buttons[i].center.y = rv.center.y+CGFloat(100*cos((Double(kodo)*Double(i)+Double(kodo/2))*M_PI/180 ))
                self.buttons[i].transform = CGAffineTransform(scaleX: CGFloat(self.bubbleRadius/10), y: CGFloat(self.bubbleRadius/10));
                
                //self.buttons[i].layer.cornerRadius =  CGFloat(self.bubbleRadius)/2
                //self.buttons[i].layer.masksToBounds = true


            }, completion: nil)
 
        }
        
    }
    
    public func addCustomButton(_ target: Any?, action: Selector, for controlEvents: UIControlEvents){
        
        let addButton:ShareBubbleButton = ShareBubbleButton()
        addButton.backgroundColor = UIColor.orange
        addButton.addTarget(target, action: action, for: controlEvents)
        buttons.append(addButton)
    }
    
    
    public func hideView(){
        self.baseView.removeFromSuperview()
    }
}
