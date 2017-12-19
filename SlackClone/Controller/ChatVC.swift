//
//  ChatVC.swift
//  SlackClone
//
//  Created by Kioja Kudumu on 12/18/17.
//  Copyright © 2017 Kioja Kudumu. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //outlets
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //First, we target the revealviewcontroller, which invokes itself, then create selector for the revealview controller and method for revealtoggle, tie this to menu button with touchupinside
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        
        //add gesture recognizers that are in the revealvc library
        //the panGestureRecognizer is the slide to open up the view
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        // Do any additional setup after loading the view.
    }


}
