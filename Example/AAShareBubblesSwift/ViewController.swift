//
//  ViewController.swift
//  AAShareBubblesSwift
//
//  Created by O-Junpei on 06/02/2017.
//  Copyright (c) 2017 O-Junpei. All rights reserved.
//

import UIKit
import AAShareBubblesSwift

class ViewController: UIViewController,AAShareBubbleDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 50, width: 200, height: 40)
        button.addTarget(self, action: #selector(cornerCircleButtonClicked(sender:)), for:.touchUpInside)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //角丸ボタンが押されたら呼ばれます
    internal func cornerCircleButtonClicked(sender: UIButton){
        
        let aaa:AAShareBubblesSwift = AAShareBubblesSwift()
        aaa.delegate = self
        //aaa.addCustomButton()
        //aaa.addCustomButton()
        aaa.show()
        //aaa.testBun.addTarget(self, action: #selector(testBunClicked(sender:)), for: .touchUpInside)
        
    }
    
    public func testBunClicked(sender: UIButton){
        print("yosshi")
    }
    
    func aaShareBubblesTapped(){
    
    }
    
    func aaShareBubblesDidHide(){
        
    }
    

}

