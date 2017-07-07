//
//  AAShareBubblesSwift.swift
//  AAShareBubblesSwift
//
//  Created by junpei ono on 2017/06/23.
//

import UIKit


public protocol AAShareBubbleDelegate: class {
    
    func aaShareBubblesTapped()
    func aaShareBubblesDidHide()
}

public class AAShareBubblesSwift: NSObject {
    
    public let testBun:UIButton = UIButton()
    
    //delegate
    public weak var delegate: AAShareBubbleDelegate?
    
    override public init() {
        super.init()
    }
    
    public func show(){
        
        print("helloTestFunc")
        let baseView:UIView = UIView()
        let rv = UIApplication.shared.keyWindow! as UIWindow
        baseView.frame = rv.frame
        baseView.backgroundColor = UIColor.red
        rv.addSubview(baseView)
        
        testBun.frame = CGRect(x: 50, y: 150, width: 200, height: 40)
        testBun.backgroundColor = UIColor.yellow
        testBun.addTarget(nil, action: #selector(basicButtonClicked(sender:)), for:.touchUpInside)

        rv.addSubview(testBun)
        
        //delegate?.aaShareBubblesTapped()
    }
    
    //basicボタンが押されたら呼ばれます
    func basicButtonClicked(sender: UIButton){
        print("basicButtonBtnClicked")
    }
    
    
}
