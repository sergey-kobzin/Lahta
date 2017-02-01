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
    @IBOutlet weak var sideMenuItemsTableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func menuButtonClick(_ sender: UIButton) {
        let x = -scrollView.contentOffset.x + 270
        scrollView.setContentOffset(CGPoint(x: x, y: 0), animated: true)
    }
    
    var sideMenuItemsLabels: [String] = ["Информация", "Фотобанк", "Видеобанк", "Новости", "Связаться с нами", "Настройки"]
    var sideMenuItemsIcons: [UIImage] = [#imageLiteral(resourceName: "Info"), #imageLiteral(resourceName: "Photo"), #imageLiteral(resourceName: "Video"), #imageLiteral(resourceName: "News"), #imageLiteral(resourceName: "Mail"), #imageLiteral(resourceName: "Settings")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenuItemsTableView.register(UINib(nibName: "SideMenuItemsTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        sideMenuItemsTableView.delegate = self
        sideMenuItemsTableView.dataSource = self
        
        contentView.layer.shadowOpacity = 0.3
        contentView.layer.shadowRadius = 5
        
        scrollView.setContentOffset(CGPoint(x: 270, y: 0), animated: false)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

//MARK: - TableViewDelegate, TableViewDatasource

extension MainScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenuItemsLabels.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SideMenuItemsTableViewCell
        cell.setData(sideMenuItemsLabels[indexPath.row], sideMenuItemsIcons[indexPath.row])
        
        return cell
    }
    
}

