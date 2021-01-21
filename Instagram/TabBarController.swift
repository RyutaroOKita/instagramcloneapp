//
//  TabBarController.swift
//  Instagram
//
//  Created by Ryutaro Okita on 2021/01/20.
//  Copyright © 2021 ryutarou.okita. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.tabBar.tintColor = UIColor(red: 1.0,green: 0.44,blue: 0.11,alpha: 1)
        self.tabBar.barTintColor = UIColor(red: 0.96,green: 0.91,blue: 0.87,alpha: 1)
        self.delegate = self
    }

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    if viewController is ImageSelectViewController {

    let imageSelectViewController = storyboard!.instantiateViewController(withIdentifier: "ImageSelect")
    present(imageSelectViewController, animated: true)
    return false
    } else {
        
        return true
    
    }

  }

}






