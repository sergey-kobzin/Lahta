//
//  MainScreenViewController.swift
//  Lahta
//
//  Created by Sergey Kobzin on 28.01.17.
//  Copyright © 2017 Sergey.Kobzin. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.shadowOpacity = 0.5
        contentView.layer.shadowRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

