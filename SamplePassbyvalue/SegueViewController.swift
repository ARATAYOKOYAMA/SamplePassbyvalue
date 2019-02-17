//
//  BViewController.swift
//  SamplePassbyvalue
//
//  Created by 横山新 on 2019/02/18.
//  Copyright © 2019 ARATAYOKOYAMA. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController {

    @IBOutlet private weak var samplelabel: UILabel!
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        samplelabel.text = text
    }
}
