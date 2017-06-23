//
//  AAShareBubblesSwift.swift
//  AAShareBubblesSwift
//
//  Created by junpei ono on 2017/06/23.
//

import UIKit

public class AAShareBubblesSwift: NSObject {
    
    let baseView:UIButton = UIButton()
    var buttons:[UIButton] = Array()
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
        
        /*
        testBun.frame = CGRect(x: 50, y: 150, width: 200, height: 40)
        testBun.backgroundColor = UIColor.red
        
        testBun.addTargetClosure{_ in
            
            self.hideView()
        }
        baseView.addSubview(testBun)
 
 */
        
        for btn in buttons{
            let random = arc4random() % 200
            let rando2 = arc4random() % 200
            
            btn.frame = CGRect(x: CGFloat(random), y: CGFloat(rando2), width: 40, height: 40)
            btn.addTargetClosure{_ in
                
                self.hideView()
            }
            baseView.addSubview(btn)
        }
    }
    
    
    
    public func addCustomButton(){
        
        let addButton:UIButton = UIButton()
        addButton.backgroundColor = UIColor.orange
        buttons.append(addButton)
    }
    public func hideView(){
        self.baseView.removeFromSuperview()
    }
    
    public func showprint(){
        
        print("printNOw")
        
    }
}
