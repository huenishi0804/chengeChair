//
//  ViewController.swift
//  chengeChair
//
//  Created by hidekazu uenishi on 2017/12/20.
//  Copyright © 2017年 hidekazu uenishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!//幅、高さ共に100
    @IBOutlet weak var label2: UILabel!
    
    
    
    @IBAction func label1drag(_ sender: UIPanGestureRecognizer) {
        switch sender.state {

        case .changed:
            //ドラッグする指を追う
            label1.center = sender.location(in: self.view)
        case .ended:
//            if
            //初期位置に戻る
                label1.frame = CGRect(x:200, y:462, width:100, height: 100)
        default:
            break
        }
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

