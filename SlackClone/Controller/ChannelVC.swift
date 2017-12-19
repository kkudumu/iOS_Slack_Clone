//
//  ChannelVC.swift
//  SlackClone
//
//  Created by Kioja Kudumu on 12/18/17.
//  Copyright © 2017 Kioja Kudumu. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //measures how much the rear view controller is shown. This says take all of it except 60 points
      self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }


}
