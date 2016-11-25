//
//  ViewController.swift
//  Orientation_practice_01
//
//  Created by yuichi.watanabe on 2016/11/25.
//  Copyright © 2016年 yuuichi.watanabe. All rights reserved.
//

/* modalで出現させたViewControllerやNavigationControllerは、回転設定をどう継承させるか
 * ( NavigationControllerごしの、viewControllerの回転設定メソッドは呼ばれない )
 *
 *
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // 書き方注意： swift3からvarに変わっている
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
         let orientation: UIInterfaceOrientationMask = [UIInterfaceOrientationMask.portrait, UIInterfaceOrientationMask.portraitUpsideDown]
        return orientation
    }

    override var shouldAutorotate: Bool{
        return true
    }
    
    
}


    // 方法2: エクステンションにて前提を変えてしまう
extension UINavigationController {
    // 書き方注意： swift3からvarに変わっている
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        let orientation: UIInterfaceOrientationMask = [UIInterfaceOrientationMask.portrait, UIInterfaceOrientationMask.portraitUpsideDown]
        return orientation
    }
    
    override open var shouldAutorotate: Bool{
        return true
    }
    
}

