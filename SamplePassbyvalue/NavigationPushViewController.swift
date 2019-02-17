//
//  NavigationPushViewController.swift
//  SamplePassbyvalue
//
//  Created by 横山新 on 2019/02/18.
//  Copyright © 2019 ARATAYOKOYAMA. All rights reserved.
//

import UIKit

class NavigationPushViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        label.text = text
    }

}
