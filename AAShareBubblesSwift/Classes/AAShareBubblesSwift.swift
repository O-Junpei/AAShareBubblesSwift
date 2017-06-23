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
    
    override public init() {
        super.init()
    }
    
    public func show(){
        
        print("helloTestFunc")
        
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
            
            buttons[i].frame = CGRect(x: myBoundSize.width/2, y: myBoundSize.height/2, width: 40, height: 40)
            buttons[i].addTargetClosure{_ in
                
                self.hideView()
            }
            baseView.addSubview(buttons[i])
            
            UIView.animate(withDuration: 1.0, delay: 0.0, options: .autoreverse, animations: {
                self.buttons[i].frame = CGRect(x: myBoundSize.width/5, y: myBoundSize.height/5, width: 40, height: 40)
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
    
    public func showprint(){
        
        print("printNOw")
        
    }
    
    
    
    
}
