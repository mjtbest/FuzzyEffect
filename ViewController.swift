//
//  ViewController.swift
//  FuzzyEffect
//
//  Created by mjt on 15/11/12.
//  Copyright © 2015年 mjt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var icon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置头像的圆角效果
        self.icon.layer.cornerRadius = 50
        self.icon.layer.masksToBounds = true
        
        // 设置模糊效果类实例
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        // 设置效果视图类实例
        let blurView = UIVisualEffectView(effect: blurEffect)
        // 设置效果视图类实例的尺寸
        blurView.frame.size = self.view.frame.size
        // 将模糊效果视图类放入背景中
        bg.addSubview(blurView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

