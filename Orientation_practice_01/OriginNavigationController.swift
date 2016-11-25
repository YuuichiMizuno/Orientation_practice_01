//
//  OriginNavigationController.swift
//  Orientation_practice_01
//
//  Created by yuichi.watanabe on 2016/11/25.
//  Copyright © 2016年 yuuichi.watanabe. All rights reserved.
//

import UIKit

class OriginNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 方法1: オーバーライドする カスタムクラスを使う

    // 書き方注意： swift3からvarに変わっている
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        let orientation: UIInterfaceOrientationMask = [UIInterfaceOrientationMask.portrait, UIInterfaceOrientationMask.portraitUpsideDown]
        return orientation
    }
    
    override var shouldAutorotate: Bool{
        return true
    }
    

}
