//
//  RootViewController.swift
//  Lahta
//
//  Created by Sergey Kobzin on 28.01.17.
//  Copyright © 2017 Sergey.Kobzin. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var infoScreenContainerView: UIView!
    @IBOutlet weak var photosScreenContainerView: UIView!
    @IBOutlet weak var videosScreenContainerView: UIView!
    @IBOutlet weak var newsScreenContainerView: UIView!
    @IBOutlet weak var contactUsScreenContainerView: UIView!
    @IBOutlet weak var settingsScreenContainerView: UIView!
    @IBOutlet weak var mainScreenContainerView: UIView!
    @IBOutlet weak var sideMenuItemsTableView: UITableView!
    
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
        
        contentView.layer.shadowOpacity = 0.2
        contentView.layer.shadowRadius = 10
        
        scrollView.setContentOffset(CGPoint(x: 270, y: 0), animated: false)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

// MARK: - TableViewDelegate, TableViewDatasource

extension RootViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        setActiveViewController(indexPath.row)
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

// MARK: - Custom Functions

extension RootViewController {
    
    func setActiveViewController(_ selectedIndex: Int) {
        infoScreenContainerView.isHidden = true
        photosScreenContainerView.isHidden = true
        videosScreenContainerView.isHidden = true
        newsScreenContainerView.isHidden = true
        contactUsScreenContainerView.isHidden = true
        settingsScreenContainerView.isHidden = true
        mainScreenContainerView.isHidden = true
        
        switch selectedIndex {
        case 0:
            infoScreenContainerView.isHidden = false
        case 1:
            photosScreenContainerView.isHidden = false
        case 2:
            videosScreenContainerView.isHidden = false
        case 3:
            newsScreenContainerView.isHidden = false
        case 4:
            contactUsScreenContainerView.isHidden = false
        case 5:
            settingsScreenContainerView.isHidden = false
        default:
            mainScreenContainerView.isHidden = false
        }
    }
    
}
