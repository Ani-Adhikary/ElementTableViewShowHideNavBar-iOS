//
//  ElementDetailViewController.swift
//  ElementTableViewSegue
//
//  Created by Ani Adhikary on 18/11/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//

import UIKit

class ElementDetailViewController: UIViewController {

    @IBOutlet weak var elementNameLabel: UILabel!    
    @IBOutlet weak var elementSymbolLabel: UILabel!
    
    var element: Element?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        hideNavigationAndTabBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let elementVal = element {
            elementNameLabel.text = elementVal.elementName
            elementSymbolLabel.text = elementVal.elementSymbol
            navigationItem.title = elementVal.elementName
        }
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}

extension UIViewController {
    func hideNavigationAndTabBar(){
        // Hide the navigation bar on the this view controller
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
    func showNavigationAndTabBar() {
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.tabBarController?.tabBar.isHidden = false
    }
    
}
