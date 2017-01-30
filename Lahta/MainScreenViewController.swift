//
//  MainScreenViewController.swift
//  Lahta
//
//  Created by Sergey Kobzin on 28.01.17.
//  Copyright © 2017 Sergey.Kobzin. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("123")
        
        mainView.layer.shadowOpacity = 0.5
        mainView.layer.shadowRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

